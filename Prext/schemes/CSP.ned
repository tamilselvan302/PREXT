//
// Copyright (C) 2016 Karim Emara <emara@in.tum.de>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package org.car2x.veins.modules.Prext.schemes;
import org.car2x.veins.modules.Prext.base.BasePrivLayer;

//
// TODO auto-generated module
//
simple CSP extends BasePrivLayer
{
    parameters:
        int psynmLifetime @unit(s);
        int silentPeriod @unit(s);
        int clockDrift @unit(ms) = default(uniform(0ms,10ms));
        
    @signal[stimes](type=double);
    @statistic[silentTimes](source=stimes;title="silentTimes";record=stats,vector);
    
    @class(CSP);    
 
}
