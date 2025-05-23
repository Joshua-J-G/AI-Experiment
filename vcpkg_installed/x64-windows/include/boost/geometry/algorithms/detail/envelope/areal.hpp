// Boost.Geometry

// Copyright (c) 2018-2021 Oracle and/or its affiliates.

// Contributed and/or modified by Vissarion Fysikopoulos, on behalf of Oracle
// Contributed and/or modified by Adam Wulkiewicz, on behalf of Oracle

// Use, modification and distribution is subject to the Boost Software License,
// Version 1.0. (See accompanying file LICENSE_1_0.txt or copy at
// http://www.boost.org/LICENSE_1_0.txt)

#ifndef BOOST_GEOMETRY_ALGORITHMS_DETAIL_ENVELOPE_AREAL_HPP
#define BOOST_GEOMETRY_ALGORITHMS_DETAIL_ENVELOPE_AREAL_HPP

#include <boost/geometry/core/cs.hpp>
#include <boost/geometry/core/tags.hpp>

#include <boost/geometry/iterators/segment_iterator.hpp>

#include <boost/geometry/algorithms/detail/envelope/range.hpp>
#include <boost/geometry/algorithms/detail/envelope/linear.hpp>

#include <boost/geometry/algorithms/dispatch/envelope.hpp>

#include <boost/geometry/views/reversible_view.hpp>

namespace boost { namespace geometry
{

#ifndef DOXYGEN_NO_DETAIL
namespace detail { namespace envelope
{


struct envelope_hole
{
    template <typename Range, typename Box, typename Strategies>
    static inline void apply(Range const& range, Box& mbr, Strategies const& strategies)
    {
        // Reverse holes to avoid calculating the envelope for the outside
        // in spherical and geographic coordinate systems
        detail::clockwise_view
            <
                Range const,
                geometry::point_order<Range>::value == counterclockwise
                    ? clockwise : counterclockwise
            > view(range);
        strategies.envelope(range, mbr).apply(view, mbr);
    }
};

struct envelope_polygon
{
    template <typename Polygon, typename Box, typename Strategy>
    static inline void apply(Polygon const& polygon, Box& mbr, Strategy const& strategy)
    {
        ring_return_type_t<Polygon const> ext_ring = exterior_ring(polygon);

        if (geometry::is_empty(ext_ring))
        {
            // use dummy multi polygon to get the strategy because there is no multi ring concept
            using strategy_t = decltype(strategy.envelope(detail::dummy_multi_polygon(),
                                                          detail::dummy_box()));
            // if the exterior ring is empty, consider the interior rings
            envelope_multi_range
                <
                    envelope_hole
                >::template apply<strategy_t>(interior_rings(polygon), mbr, strategy);
        }
        else
        {
            // otherwise, consider only the exterior ring
            envelope_range::apply(ext_ring, mbr, strategy);
        }
    }
};


}} // namespace detail::envelope
#endif // DOXYGEN_NO_DETAIL

#ifndef DOXYGEN_NO_DISPATCH
namespace dispatch
{


template <typename Ring>
struct envelope<Ring, ring_tag>
    : detail::envelope::envelope_range
{};

template <typename Polygon>
struct envelope<Polygon, polygon_tag>
    : detail::envelope::envelope_polygon
{};

template <typename MultiPolygon>
struct envelope<MultiPolygon, multi_polygon_tag>
    : detail::envelope::envelope_multi_range
        <
            detail::envelope::envelope_polygon
        >
{};


} // namespace dispatch
#endif // DOXYGEN_NO_DISPATCH


}} // namespace boost::geometry

#endif // BOOST_GEOMETRY_ALGORITHMS_DETAIL_ENVELOPE_AREAL_HPP
