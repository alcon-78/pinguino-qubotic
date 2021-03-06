/*-------------------------------------------------------------------
 itoa.c - convert (unsigned) int to strings

 written by: Raphael Neider <rneider AT web.de>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA

 $Id: itoa.c 4148 2006-05-01 20:47:12Z tecodev $
-------------------------------------------------------------------*/

#include <stdlib.h>

void uitoa (unsigned int value, __data char *str, unsigned char radix)
{
  ultoa (value, str, radix);
}

void itoa (int value, __data char *str, unsigned char radix)
{
  ltoa (value, str, radix);
}

