.class public Lpl/mkrstudio/truefootball3/objects/CampPlace;
.super Ljava/lang/Object;
.source "CampPlace.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x301803a17a596c78L


# instance fields
.field country:Lpl/mkrstudio/truefootball3/objects/Country;

.field weather:F


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "country",
            "time"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CampPlace;->country:Lpl/mkrstudio/truefootball3/objects/Country;

    .line 18
    invoke-direct {p0, p1, p2}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->calculateWeather(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Time;)F

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/CampPlace;->weather:F

    return-void
.end method

.method private calculateWeather(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Time;)F
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "country",
            "time"
        }
    .end annotation

    .line 22
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/16 v4, 0xb

    if-eq v0, v4, :cond_3

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    const/16 v5, 0x8

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    const/16 v5, 0xa

    if-ne v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 29
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ESP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    const-wide/high16 v7, 0x400c000000000000L    # 3.5

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_6

    move-wide v5, v7

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    move-wide v5, v9

    :cond_7
    :goto_4
    double-to-float v0, v5

    return v0

    .line 31
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    if-eqz v0, :cond_b

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    move-wide v5, v11

    goto :goto_5

    :cond_a
    move-wide v5, v13

    :goto_5
    double-to-float v0, v5

    return v0

    .line 33
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TUR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v3, :cond_d

    :cond_c
    move-wide v5, v7

    goto :goto_6

    :cond_d
    if-eqz v4, :cond_c

    :goto_6
    double-to-float v0, v5

    return v0

    .line 35
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v4, :cond_10

    move-wide v5, v11

    goto :goto_7

    :cond_10
    move-wide v5, v13

    :goto_7
    double-to-float v0, v5

    return v0

    .line 37
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v3, :cond_12

    goto :goto_8

    :cond_12
    if-eqz v4, :cond_13

    move-wide v7, v9

    :cond_13
    :goto_8
    double-to-float v0, v7

    return v0

    .line 39
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ITA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v3, :cond_15

    goto :goto_9

    :cond_15
    if-eqz v4, :cond_16

    move-wide v7, v9

    :cond_16
    :goto_9
    double-to-float v0, v7

    return v0

    .line 41
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_18
    if-eqz v4, :cond_19

    move-wide v5, v13

    goto :goto_a

    :cond_19
    move-wide v5, v9

    :goto_a
    double-to-float v0, v5

    return v0

    .line 43
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    if-eqz v4, :cond_1c

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    goto :goto_b

    :cond_1c
    move-wide v9, v11

    :goto_b
    double-to-float v0, v9

    return v0

    .line 45
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v3, :cond_1e

    goto :goto_c

    :cond_1e
    move-wide v7, v9

    :goto_c
    double-to-float v0, v7

    return v0

    .line 47
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz v3, :cond_20

    goto :goto_d

    :cond_20
    if-eqz v4, :cond_21

    move-wide v5, v11

    goto :goto_d

    :cond_21
    move-wide v5, v13

    :goto_d
    double-to-float v0, v5

    return v0

    .line 49
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SVK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz v3, :cond_23

    goto :goto_e

    :cond_23
    if-eqz v4, :cond_24

    move-wide v5, v11

    goto :goto_e

    :cond_24
    move-wide v5, v13

    :goto_e
    double-to-float v0, v5

    return v0

    .line 51
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz v3, :cond_26

    move-wide v7, v9

    :cond_26
    double-to-float v0, v7

    return v0

    .line 53
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BUL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v3, :cond_28

    goto :goto_f

    :cond_28
    if-eqz v4, :cond_29

    move-wide v5, v13

    goto :goto_f

    :cond_29
    move-wide v5, v9

    :goto_f
    double-to-float v0, v5

    return v0

    .line 55
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CYP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v3, :cond_2c

    :cond_2b
    move-wide v5, v7

    goto :goto_10

    :cond_2c
    if-eqz v4, :cond_2b

    :goto_10
    double-to-float v0, v5

    return v0

    .line 57
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz v3, :cond_2e

    goto :goto_11

    :cond_2e
    if-eqz v4, :cond_2f

    move-wide v7, v11

    goto :goto_11

    :cond_2f
    move-wide v7, v13

    :goto_11
    double-to-float v0, v7

    return v0

    .line 59
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v3, :cond_31

    goto :goto_12

    :cond_31
    if-eqz v4, :cond_32

    move-wide v9, v13

    :cond_32
    :goto_12
    double-to-float v0, v9

    return v0

    .line 61
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JPN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz v3, :cond_34

    goto :goto_13

    :cond_34
    if-eqz v4, :cond_35

    move-wide v9, v13

    :cond_35
    :goto_13
    double-to-float v0, v9

    return v0

    .line 63
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IDN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    double-to-float v0, v9

    return v0

    .line 65
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    double-to-float v0, v9

    return v0

    .line 67
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "USA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    double-to-float v0, v9

    return v0

    .line 69
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v3, :cond_3b

    :cond_3a
    move-wide v7, v9

    goto :goto_14

    :cond_3b
    if-eqz v4, :cond_3a

    :goto_14
    double-to-float v0, v7

    return v0

    .line 71
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ARG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz v3, :cond_3e

    :cond_3d
    move-wide v7, v9

    goto :goto_15

    :cond_3e
    if-eqz v4, :cond_3d

    :goto_15
    double-to-float v0, v7

    return v0

    .line 73
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MEX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz v3, :cond_41

    :cond_40
    move-wide v7, v9

    goto :goto_16

    :cond_41
    if-eqz v4, :cond_40

    :goto_16
    double-to-float v0, v7

    return v0

    .line 75
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EGY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz v3, :cond_43

    move-wide v5, v13

    goto :goto_17

    :cond_43
    if-eqz v4, :cond_44

    goto :goto_17

    :cond_44
    move-wide v5, v7

    :goto_17
    double-to-float v0, v5

    return v0

    .line 77
    :cond_45
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TUN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    if-eqz v3, :cond_46

    move-wide v5, v13

    goto :goto_18

    :cond_46
    if-eqz v4, :cond_47

    goto :goto_18

    :cond_47
    move-wide v5, v7

    :goto_18
    double-to-float v0, v5

    return v0

    .line 79
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz v3, :cond_49

    move-wide v5, v13

    goto :goto_19

    :cond_49
    if-eqz v4, :cond_4a

    goto :goto_19

    :cond_4a
    move-wide v5, v7

    :goto_19
    double-to-float v0, v5

    return v0

    .line 81
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz v3, :cond_4c

    move-wide v5, v13

    goto :goto_1a

    :cond_4c
    if-eqz v4, :cond_4d

    goto :goto_1a

    :cond_4d
    move-wide v5, v7

    :goto_1a
    double-to-float v0, v5

    return v0

    .line 83
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz v3, :cond_4f

    goto :goto_1b

    :cond_4f
    if-eqz v4, :cond_50

    move-wide v5, v11

    goto :goto_1b

    :cond_50
    move-wide v5, v9

    :goto_1b
    double-to-float v0, v5

    return v0

    :cond_51
    const/high16 v0, 0x40200000    # 2.5f

    return v0
.end method


# virtual methods
.method public getCountry()Lpl/mkrstudio/truefootball3/objects/Country;
    .locals 1

    .line 89
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CampPlace;->country:Lpl/mkrstudio/truefootball3/objects/Country;

    return-object v0
.end method

.method public getWeather()F
    .locals 1

    .line 97
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/CampPlace;->weather:F

    return v0
.end method

.method public setCountry(Lpl/mkrstudio/truefootball3/objects/Country;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CampPlace;->country:Lpl/mkrstudio/truefootball3/objects/Country;

    return-void
.end method

.method public setWeather(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weather"
        }
    .end annotation

    .line 101
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/CampPlace;->weather:F

    return-void
.end method
