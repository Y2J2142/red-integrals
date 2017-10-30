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
        print t/text
    finish: max (to float! a/text) (to float! b/text)
    start: min (to float! a/text) (to float! b/text)
    total: 0.0
    x: start
    h: (finish - start) / 100
    repeat i 100
    [
        x: x + h
        func-val: to float! ( do t/text )
      
        total: total + (func-val * h)
    ]
        w/data: total
    ]
    return
    text "Integral value" w: field
]