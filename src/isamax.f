!>
! @license Apache-2.0
!
! Copyright (c) 2024 The Stdlib Authors.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!    http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.
!<

!> Finds the index of the first element having the maximum absolute value.
!
! ## Notes
!
! * Modified version of reference BLAS level1 routine (version 3.7.0). Updated to "free form" Fortran 95.
!
! ## Authors
!
! * Univ. of Tennessee
! * Univ. of California Berkeley
! * Univ. of Colorado Denver
! * NAG Ltd.
!
! ## History
!
! * Jack Dongarra, linpack, 3/11/78.
!
!   - modified 3/93 to return if incx .le. 0.
!   - modified 12/3/93, array(1) declarations changed to array(*)
!
! ## License
!
! From <http://netlib.org/blas/faq.html>:
!
! > The reference BLAS is a freely-available software package. It is available from netlib via anonymous ftp and the World Wide Web. Thus, it can be included in commercial software packages (and has been). We only ask that proper credit be given to the authors.
! >
! > Like all software, it is copyrighted. It is not trademarked, but we do ask the following:
! >
! > * If you modify the source for these routines we ask that you change the name of the routine and comment the changes made to the original.
! >
! > * We will gladly answer any questions regarding the software. If a modification is done, however, it is the responsibility of the person who modified the routine to provide support.
!
! @param {integer} N - number of indexed elements
! @param {Array<real>} sx - input array
! @param {integer} stride - `sx` stride length
! @return {integer} index value
!<
integer function isamax( N, sx, stride )
  implicit none
  ! ..
  ! Scalar arguments:
  integer :: stride, N
  ! ..
  ! Array arguments:
  real :: sx(*)
  ! ..
  ! Local scalars:
  real :: smax
  integer :: i, ix
  ! ..
  ! Intrinsic functions:
  intrinsic ABS
  ! ..
  isamax = 0
  if ( N < 1 .OR. stride <= 0 ) then
    return
  end if
  isamax = 1
  ! ..
  ! If N is equal to `1`, return early...
  if ( N == 1 ) then
    return
  end if
  ! ..
  ! If stride is equal to `1`, use unrolled loops...
  if ( stride == 1 ) then
    ! ..
    ! Code for increment equal to `1`...
    smax = ABS( sx( 1 ) )
    do i = 2, N
      if ( ABS( sx( i ) ) > smax ) then
        isamax = i
        smax = ABS( sx( i ) )
      end if
    end do
    return
  else
    ! ..
    ! Code for increment not equal to `1`...
    ix = 1
    smax = ABS( sx( 1 ) )
    do i = 2, N
      ix = ix + stride
      if ( ABS( sx( ix ) ) > smax ) then
        isamax = i
        smax = ABS( sx( ix ) )
      end if
    end do
    return
  end if
  return
end function isamax