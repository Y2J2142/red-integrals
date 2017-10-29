Red[needs: view]

calc: does[
    
]



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
    print eval-bloc
    finish: max (to float! a/text) (to float! b/text)
    start: min (to float! a/text) (to float! b/text)
    total: 0.0
    x: start
    h: finish - start / 10
    repeat i 10
    [
        tmp: to float! ( do eval )
        print tmp
        xnext: x + h
        total: total + (x + (xnext + x / 2)) * tmp
        x: xnext
    ]
        w/data: total
    ]
    return
    text "Integral value" w: field
]