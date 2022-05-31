module ShapesAISC

using CSV

struct Shape

    Type	
    EDI_Std_Nomenclature
    AISC_Manual_Label
    T_F
    W	
    A	
    d	
    ddet	
    Ht	
    h	
    OD	
    bf	
    bfdet	
    B	
    b	
    ID	
    tw	
    twdet	
    twdet_div_2	
    tf	
    tfdet	
    t	
    tnom	
    tdes	
    kdes	
    kdet	
    k1	
    x	
    y	
    eo	
    xp	
    yp	
    bf_div_2tf	
    b_div_t	
    b_div_tdes	
    h_div_tw	
    h_div_tdes	
    D_div_t	
    Ix	
    Zx	
    Sx	
    rx	
    Iy	
    Zy	
    Sy	
    ry	
    Iz	
    rz	
    Sz	
    J	
    Cw	
    C	
    Wno	
    Sw1	
    Sw2	
    Sw3	
    Qf	
    Qw	
    ro	
    H	
    tan_	
    Iw	
    zA	
    zB	
    zC	
    wA	
    wB	
    wC	
    SwA	
    SwB	
    SwC	
    SzA	
    SzB	
    SzC	
    rts	
    ho	
    PA	
    PA2	
    PB	
    PC	
    PD	
    T	
    WGi	
    WGo	

end


"""
    properties(shape_name)

Accepts `shape_name` as a String and returns cross-section dimensions and section properties in the Struct `properties`.

"""


function properties(shape_name)

    data = CSV.File(pkgdir(ShapesAISC, "assets", "aisc-shapes-database-v15.0.csv"); types=Dict(:T_F => String))

    shape_row = findfirst(==(shape_name), data.AISC_Manual_Label)
    
    properties = Shape(data.Type[shape_row], data.EDI_Std_Nomenclature[shape_row], data.AISC_Manual_Label[shape_row], data.T_F[shape_row], data.W[shape_row], data.A[shape_row], data.d[shape_row], data.ddet[shape_row], data.Ht[shape_row], data.h[shape_row], data.OD[shape_row], data.bf[shape_row], data.bfdet[shape_row], data.B[shape_row], data.b[shape_row], data.ID[shape_row], data.tw[shape_row], data.twdet[shape_row], data.twdet_div_2[shape_row], data.tf[shape_row], data.tfdet[shape_row], data.t[shape_row], data.tnom[shape_row], data.tdes[shape_row], data.kdes[shape_row], data.kdet[shape_row], data.k1[shape_row], data.x[shape_row], data.y[shape_row], data.eo[shape_row], data.xp[shape_row], data.yp[shape_row], data.bf_div_2tf[shape_row], data.b_div_t[shape_row], data.b_div_tdes[shape_row], data.h_div_tw[shape_row], data.h_div_tdes[shape_row], data.D_div_t[shape_row], data.Ix[shape_row], data.Zx[shape_row], data.Sx[shape_row], data.rx[shape_row], data.Iy[shape_row], data.Zy[shape_row], data.Sy[shape_row], data.ry[shape_row], data.Iz[shape_row], data.rz[shape_row], data.Sz[shape_row], data.J[shape_row], data.Cw[shape_row], data.C[shape_row], data.Wno[shape_row], data.Sw1[shape_row], data.Sw2[shape_row], data.Sw3[shape_row], data.Qf[shape_row], data.Qw[shape_row], data.ro[shape_row], data.H[shape_row], data.tan_[shape_row], data.Iw[shape_row], data.zA[shape_row], data.zB[shape_row], data.zC[shape_row], data.wA[shape_row], data.wB[shape_row], data.wC[shape_row], data.SwA[shape_row], data.SwB[shape_row], data.SwC[shape_row], data.SzA[shape_row], data.SzB[shape_row], data.SzC[shape_row], data.rts[shape_row], data.ho[shape_row], data.PA[shape_row], data.PA2[shape_row], data.PB[shape_row], data.PC[shape_row], data.PD[shape_row], data.T[shape_row], data.WGi[shape_row], data.WGo[shape_row])
    

    return properties

end

end # module
