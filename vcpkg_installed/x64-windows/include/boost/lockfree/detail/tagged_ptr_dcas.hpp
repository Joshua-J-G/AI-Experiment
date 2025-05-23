//  tagged pointer, for aba prevention
//
//  Copyright (C) 2008, 2016 Tim Blechmann
//
//  Distributed under the Boost Software License, Version 1.0. (See
//  accompanying file LICENSE_1_0.txt or copy at
//  http://www.boost.org/LICENSE_1_0.txt)

#ifndef BOOST_LOCKFREE_TAGGED_PTR_DCAS_HPP_INCLUDED
#define BOOST_LOCKFREE_TAGGED_PTR_DCAS_HPP_INCLUDED

#include <cstddef> /* for std::size_t */
#include <limits>

#include <boost/config.hpp>
#include <boost/predef.h>

namespace boost { namespace lockfree { namespace detail {


template < class T >
class alignas( 2 * sizeof( void* ) ) tagged_ptr
{
public:
    typedef std::size_t tag_t;

    /** uninitialized constructor */
    tagged_ptr( void ) noexcept //: ptr(0), tag(0)
    {}

    tagged_ptr( tagged_ptr const& p ) = default;

    explicit tagged_ptr( T* p, tag_t t = 0 ) :
        ptr( p ),
        tag( t )
    {}

    /** unsafe set operation */
    /* @{ */
    tagged_ptr& operator=( tagged_ptr const& p ) = default;

    void set( T* p, tag_t t )
    {
        ptr = p;
        tag = t;
    }
    /* @} */

    /** comparing semantics */
    /* @{ */
    bool operator==( volatile tagged_ptr const& p ) const
    {
        return ( ptr == p.ptr ) && ( tag == p.tag );
    }

    bool operator!=( volatile tagged_ptr const& p ) const
    {
        return !operator==( p );
    }
    /* @} */

    /** pointer access */
    /* @{ */
    T* get_ptr( void ) const
    {
        return ptr;
    }

    void set_ptr( T* p )
    {
        ptr = p;
    }
    /* @} */

    /** tag access */
    /* @{ */
    tag_t get_tag() const
    {
        return tag;
    }

    tag_t get_next_tag() const
    {
        tag_t next = ( get_tag() + 1 ) & ( std::numeric_limits< tag_t >::max )();
        return next;
    }

    void set_tag( tag_t t )
    {
        tag = t;
    }
    /* @} */

    /** smart pointer support  */
    /* @{ */
    T& operator*() const
    {
        return *ptr;
    }

    T* operator->() const
    {
        return ptr;
    }

    operator bool( void ) const
    {
        return ptr != 0;
    }
    /* @} */

protected:
    T*    ptr;
    tag_t tag;
};

}}}    // namespace boost::lockfree::detail

#endif /* BOOST_LOCKFREE_TAGGED_PTR_DCAS_HPP_INCLUDED */
