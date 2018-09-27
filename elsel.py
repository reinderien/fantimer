#!/usr/bin/env python3

from bisect import bisect
from itertools import count, islice
from math import *
import math

# https://en.wikipedia.org/wiki/E_series_of_preferred_numbers
e_series = {3: (1.0, 2.2, 4.7),
            6: (1.0, 1.5, 2.2, 3.3, 4.7, 6.8),
            12: (1.0, 1.2, 1.5, 1.8, 2.2, 2.7, 3.3, 3.9, 4.7, 5.6, 6.8, 8.2),
            24: (1.0, 1.1, 1.2, 1.3, 1.5, 1.6, 1.8, 2.0, 2.2, 2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.3, 4.7, 5.1, 5.6, 6.2,
                 6.8, 7.5, 8.2, 9.1),
            48: (1.00, 1.05, 1.10, 1.15, 1.21, 1.27, 1.33, 1.40, 1.47, 1.54, 1.62, 1.69, 1.78, 1.87, 1.96, 2.05, 2.15,
                 2.26, 2.37, 2.49, 2.61, 2.74, 2.87, 3.01, 3.16, 3.32, 3.48, 3.65, 3.83, 4.02, 4.22, 4.42, 4.64, 4.87,
                 5.11, 5.36, 5.62, 5.90, 6.19, 6.49, 6.81, 7.15, 7.50, 7.87, 8.25, 8.66, 9.09, 9.53),
            96: (1.00, 1.02, 1.05, 1.07, 1.10, 1.13, 1.15, 1.18, 1.21, 1.24, 1.27, 1.30, 1.33, 1.37, 1.40, 1.43, 1.47,
                 1.50, 1.54, 1.58, 1.62, 1.65, 1.69, 1.74, 1.78, 1.82, 1.87, 1.91, 1.96, 2.00, 2.05, 2.10, 2.15, 2.21,
                 2.26, 2.32, 2.37, 2.43, 2.49, 2.55, 2.61, 2.67, 2.74, 2.80, 2.87, 2.94, 3.01, 3.09, 3.16, 3.24, 3.32,
                 3.40, 3.48, 3.57, 3.65, 3.74, 3.83, 3.92, 4.02, 4.12, 4.22, 4.32, 4.42, 4.53, 4.64, 4.75, 4.87, 4.99,
                 5.11, 5.23, 5.36, 5.49, 5.62, 5.76, 5.90, 6.04, 6.19, 6.34, 6.49, 6.65, 6.81, 6.98, 7.15, 7.32, 7.50,
                 7.68, 7.87, 8.06, 8.25, 8.45, 8.66, 8.87, 9.09, 9.31, 9.53, 9.76),
            192: (1.00, 1.01, 1.02, 1.04, 1.05, 1.06, 1.07, 1.09, 1.10, 1.11, 1.13, 1.14, 1.15, 1.17, 1.18, 1.20, 1.21,
                  1.23, 1.24, 1.26, 1.27, 1.29, 1.30, 1.32, 1.33, 1.35, 1.37, 1.38, 1.40, 1.42, 1.43, 1.45, 1.47, 1.49,
                  1.50, 1.52, 1.54, 1.56, 1.58, 1.60, 1.62, 1.64, 1.65, 1.67, 1.69, 1.72, 1.74, 1.76, 1.78, 1.80, 1.82,
                  1.84, 1.87, 1.89, 1.91, 1.93, 1.96, 1.98, 2.00, 2.03, 2.05, 2.08, 2.10, 2.13, 2.15, 2.18, 2.21, 2.23,
                  2.26, 2.29, 2.32, 2.34, 2.37, 2.40, 2.43, 2.46, 2.49, 2.52, 2.55, 2.58, 2.61, 2.64, 2.67, 2.71, 2.74,
                  2.77, 2.80, 2.84, 2.87, 2.91, 2.94, 2.98, 3.01, 3.05, 3.09, 3.12, 3.16, 3.20, 3.24, 3.28, 3.32, 3.36,
                  3.40, 3.44, 3.48, 3.52, 3.57, 3.61, 3.65, 3.70, 3.74, 3.79, 3.83, 3.88, 3.92, 3.97, 4.02, 4.07, 4.12,
                  4.17, 4.22, 4.27, 4.32, 4.37, 4.42, 4.48, 4.53, 4.59, 4.64, 4.70, 4.75, 4.81, 4.87, 4.93, 4.99, 5.05,
                  5.11, 5.17, 5.23, 5.30, 5.36, 5.42, 5.49, 5.56, 5.62, 5.69, 5.76, 5.83, 5.90, 5.97, 6.04, 6.12, 6.19,
                  6.26, 6.34, 6.42, 6.49, 6.57, 6.65, 6.73, 6.81, 6.90, 6.98, 7.06, 7.15, 7.23, 7.32, 7.41, 7.50, 7.59,
                  7.68, 7.77, 7.87, 7.96, 8.06, 8.16, 8.25, 8.35, 8.45, 8.56, 8.66, 8.76, 8.87, 8.98, 9.09, 9.20, 9.31,
                  9.42, 9.53, 9.65, 9.76, 9.88)}


class Var:
    def __init__(self, name, vmin=None, vmax=None, precision=None, value=None, values=None):
        self.name, self.precision = name, precision
        if value is not None and not isinstance(value, str):
            self.value = None
            self.values = (value,)
            self.vmin = (value,)
            self.vmax = (value,)
        elif values is not None:
            self.value = None
            self.values = values
            self.vmin = (min(values),) if vmin is None else (vmin,)
            self.vmax = (max(values),) if vmax is None else (vmax,)
        else:
            self.value = value
            self.values = None
            self.vmin, self.vmax = vmin, vmax
        self.ideal_value = None

    def iter_ser(self, x, delta=0):
        man, pw = to_eser(x)
        ser = e_series[self.precision]
        start = bisect(ser, man) + delta
        ser_arranged = ser[start:] + tuple(10*x for x in ser[:start])
        for pw in count(pw):
            fac = 10**pw
            for man in ser_arranged:
                yield fac*man

    @property
    def mins(self):
        return [num_or_eval(l) for l in self.vmin]

    @property
    def maxes(self):
        return [num_or_eval(l) for l in self.vmax]

    def get_values(self):
        if self.values is not None:
            yield from self.values
        elif isinstance(self.value, str):
            x = eval_env(self.value)
            if self.precision:
                self.ideal_value = x
                yield from islice(self.iter_ser(x, -1), 2)
            else:
                yield x
        else:
            vmin = max(self.mins)
            vmax = min(self.maxes)
            for x in self.iter_ser(vmin):
                if x > vmax:
                    return
                yield x

    def __str__(self):
        return self.name


def to_eser(x):
    pw = floor(log10(x))
    mant = x / 10**pw
    return mant, pw


dims = (Var('w', value=2*pi*60),         # angular velocity, rad/s
        Var('Vin', value=120*sqrt(2)),   # peak AC live line, V
        Var('Prp', value=40),            # pulse power (1ms), W
        Var('Pr', value=0.2),            # continuous res power, W
        Var('Vf', value=1.1),            # Opto forward drop, V
        Var('I', value=10e-3),           # peak current for opto, typ, A
        Var('Imax', value=150e-3),       # max current for opto, A
        Var('Vpasv', value='Vin - Vf'),  # potential over passives, V
        Var('Rd', value='Vf/I'),         # equivalent diode res during Ityp, V

        # Var('Vbr', values=(6.4, 6.45, 6.67, 7.13, 7.22, 7.78, 7.79, 8.65, 8.89, 9.5, 10, 10.5, 11.1, 11.4, 12.2, 12.4,
        #                   14.3, 14.4, 15.2, 17.1, 17.8, 19, 20, 20.9, 22.2, 22.8, 25.7, 28.5, 31.4, 34.2, 37.1, 40,
        #                   40.9, 44.7, 48.5, 53.2, 58.9, 64.6, 71.3, 77.9, 86.5, 95, 105, 114, 124, 143)),
        Var('Vbr', value=86.5),
        Var('Zz', value='Vbr/I'),  # typ
        Var('Vrc1', value='Vin - Vbr'),
        Var('Vrc2', value='Vbr - Vf'),

        # Vz peak is fixed at Vbr, but the proportion between R2 and C2 can vary.
        Var('R2', precision=24, vmin=('Vrc2/Imax',     # Limit discharged current for opto
                                      'Vrc2**2/Prp'),  # Limit pulse power for res
                                vmax=('Vrc2/I - 1',    # Turn on opto
                                      'Prp/Imax**2',   # Limit pulse power for res
                                      'Pr/I**2')),     # Limit continous power for res

        Var('C2', precision=12, value='1/w/sqrt(Zz**2 - (R2 + Rd)**2)'),
        Var('Xc2', value='1/w/C2'),
        Var('ImVz', value='I*Xc2'),

        Var('R1', precision=24, vmin=('Vrc1/Imax',     # Limit discharged current for opto
                                      'Vrc1**2/Prp'),  # Limit pulse power for res
                                vmax=('Vrc1/I - 1',    # Turn on opto
                                      'Prp/Imax**2',   # Limit power pulse for res
                                      'Pr/I**2')),     # Limit continuous power for res

        Var('C1', precision=12, value='I/w/(sqrt(Vin**2 - (Vf + I*R2)**2) - ImVz)'),
        Var('Xc1', value='1/w/C1'))

math_locals = {n: getattr(math, n) for n in dir(math) if not n.startswith('_')}
sym_locals = {}
dims_by_name = {d.name: d for d in dims}


def eval_env(ex):
    locs = dict(math_locals)
    locs.update(sym_locals)
    return eval(ex, {}, locs)


def num_or_eval(n):
    return n if isinstance(n, (int, float)) else eval_env(n)


def header():
    print(
        '\n'
        '{:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7} {:>7}'.format(
        'R1', 'C1', 'R2', 'C2', 'Vbr', 'Vz', 'IpkmA', 'IpspkmA',
        'Pr1acmW', 'Pr1pkW', 'Pr2acmW', 'Pr2pkW', 'Vc1pk', 'Vc2pk'))


actuals = []


def populate_actual():
    if sym_locals['R1'] != sym_locals['R2'] or sym_locals['C1'] != sym_locals['C2']:
        return

    Rt = eval_env('Rd + R1 + R2')
    Xt = eval_env('-Xc1 - Xc2')
    Zt = sqrt(Rt**2 + Xt**2)
    Zta = atan2(Xt, Rt)

    Itm = sym_locals['Vin'] / Zt
    Ita = -Zta
    Itr = Itm * cos(Ita)
    Iti = Itm * sin(Ita)

    Rz2 = eval_env('Rd + R2')
    Xz2 = -sym_locals['Xc2']
    Z2m = sqrt(Rz2**2 + Xz2**2)
    Z2a = atan2(Xz2, Rz2)

    V2m = Itm * Z2m
    V2a = Ita + Z2a
    V2r = V2m * cos(V2a)
    V2i = V2m * sin(V2a)

    err = V2m/sym_locals['Vbr'] - 1
    if not (-0.05 <= err <= 0):
        return

    Rz1 = sym_locals['R1']
    Xz1 = -sym_locals['Xc1']
    Z1m = sqrt(Rz1**2 + Xz1**2)
    Z1a = atan2(Xz1, Rz1)

    V1m = Itm * Z1m
    V1a = Ita + Z1a
    V1r = V1m * cos(V1a)
    V1i = V1m * sin(V1a)

    assert (abs(V1i + V2i) < 1e-12)  # Vin is at 0 degrees
    assert (abs(V1r + V2r - sym_locals['Vin']) < 1e-12)  # Vin's components sum to Vin

    Ipulse = sym_locals['Vin'] / Rt
    Ppr1 = Ipulse**2 * sym_locals['R1']
    Ppr2 = Ipulse**2 * sym_locals['R2']

    Irms = Itm / sqrt(2)
    Pr1 = Irms**2 * sym_locals['R1']
    Pr2 = Irms**2 * sym_locals['R2']

    state = dict(sym_locals)
    state.update({'Vz': V2m,
                  'Ityp': Itm*1e3,
                  'Ichg': Ipulse*1e3,
                  'Pr1': Pr1*1e3,
                  'Ppr1': Ppr1,
                  'Pr2': Pr2*1e3,
                  'Ppr2': Ppr2,
                  'Vc1': sym_locals['Xc1']*Itm,
                  'Vc2': sym_locals['Xc2']*Itm})
    actuals.append(state)


def dump():
    tab_size = 40
    for di in range(0, len(actuals), tab_size):
        header()

        for d in actuals[di: di+tab_size]:
            # 'R1', 'C1', 'R2', 'C2', 'Vbr', 'Vz', 'Ityp', 'Ichg', 'Pr1', 'Ppr1', 'Pr2', 'Ppr2', 'cost'
            print(
               '{R1:>7.0f} {C1:>7.1e} {R2:>7.0f} {C2:>7.1e} '
               '{Vbr:>7.1f} {Vz:>7.2f} {Ityp:>7.2f} {Ichg:>7.2f} '
               '{Pr1:>7.1f} {Ppr1:>7.1f} {Pr2:>7.1f} {Ppr2:>7.1f} '
               '{Vc1:>7.2f} {Vc2:>7.2f}'.format(**d))


def recurse(dim_index=0):
    dim = dims[dim_index]
    for x in dim.get_values():
        sym_locals[dim.name] = x
        if dim_index < len(dims) - 1:
            recurse(dim_index + 1)
        else:
            populate_actual()


recurse()
actuals.sort(key=lambda d: d['R1'])
dump()
