Red[needs: view]



view[
    across
    text "Function:" t: field
    return
    text "a:" a: field
    return
    text "b:" b: field
    return
    calc: button "Calculate"  [
    eval-bloc: []
        append eval-bloc to word! t/text
    finish: max (to float! a/text) (to float! b/text)
    start: min (to float! a/text) (to float! b/text)
    total: 0.0
    x: start
    h: (finish - start) / 10000
    repeat i 10000
    [
        x: x + h
        func-val: to float! ( do eval-bloc )
      
        total: total + (func-val * h)
    ]
        w/data: total
    ]
    return
    text "Integral value" w: field
]