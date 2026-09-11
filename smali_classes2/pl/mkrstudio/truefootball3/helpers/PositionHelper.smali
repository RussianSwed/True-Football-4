.class public Lpl/mkrstudio/truefootball3/helpers/PositionHelper;
.super Ljava/lang/Object;
.source "PositionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arePositionsSimilar(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/enums/Position;)B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    .line 181
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x3

    if-ne p0, v0, :cond_0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_1

    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_2

    :cond_1
    return v1

    .line 183
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_4

    :cond_3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_5

    :cond_4
    return v1

    .line 185
    :cond_5
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_7

    :cond_6
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_8

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_8

    :cond_7
    return v2

    .line 187
    :cond_8
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_9

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_a

    :cond_9
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_b

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_b

    :cond_a
    return v2

    .line 189
    :cond_b
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_c

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_d

    :cond_c
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_e

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_e

    :cond_d
    return v1

    .line 191
    :cond_e
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v3, 0x2

    if-ne p0, v0, :cond_f

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_10

    :cond_f
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_11

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_11

    :cond_10
    return v3

    .line 193
    :cond_11
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_12

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_13

    :cond_12
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_14

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_14

    :cond_13
    return v2

    .line 195
    :cond_14
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_15

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_16

    :cond_15
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_17

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_17

    :cond_16
    return v2

    .line 197
    :cond_17
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_18

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_19

    :cond_18
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_1a

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_1a

    :cond_19
    return v1

    .line 199
    :cond_1a
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_1b

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_1c

    :cond_1b
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_1d

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_1d

    :cond_1c
    return v3

    .line 201
    :cond_1d
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_1e

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_1f

    :cond_1e
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_20

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_20

    :cond_1f
    return v1

    .line 203
    :cond_20
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_21

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_22

    :cond_21
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_23

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_23

    :cond_22
    return v3

    .line 205
    :cond_23
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_24

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_25

    :cond_24
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_26

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_26

    :cond_25
    return v2

    .line 207
    :cond_26
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_27

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_28

    :cond_27
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_29

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_29

    :cond_28
    return v1

    .line 209
    :cond_29
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2a

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_2b

    :cond_2a
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2c

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_2c

    :cond_2b
    return v3

    .line 211
    :cond_2c
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2d

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_2e

    :cond_2d
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2f

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_2f

    :cond_2e
    return v1

    .line 213
    :cond_2f
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_30

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_31

    :cond_30
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_32

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_32

    :cond_31
    return v2

    .line 215
    :cond_32
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_33

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_34

    :cond_33
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_35

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_35

    :cond_34
    return v2

    .line 217
    :cond_35
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_36

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_37

    :cond_36
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_38

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_38

    :cond_37
    return v1

    .line 219
    :cond_38
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_39

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_3a

    :cond_39
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3b

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_3b

    :cond_3a
    return v2

    .line 221
    :cond_3b
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3c

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_3d

    :cond_3c
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3e

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_3e

    :cond_3d
    return v1

    .line 223
    :cond_3e
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3f

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_40

    :cond_3f
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_41

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_41

    :cond_40
    return v2

    .line 225
    :cond_41
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_42

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_43

    :cond_42
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_44

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_44

    :cond_43
    return v2

    .line 227
    :cond_44
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_45

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_46

    :cond_45
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_47

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_47

    :cond_46
    return v3

    .line 229
    :cond_47
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_48

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_49

    :cond_48
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_4a

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_4a

    :cond_49
    return v3

    .line 231
    :cond_4a
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_4b

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_4c

    :cond_4b
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_4d

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_4d

    :cond_4c
    return v2

    .line 233
    :cond_4d
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_4e

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_4f

    :cond_4e
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_50

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_50

    :cond_4f
    return v1

    .line 235
    :cond_50
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_51

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_52

    :cond_51
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_53

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_53

    :cond_52
    return v3

    .line 237
    :cond_53
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_54

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_55

    :cond_54
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_56

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_56

    :cond_55
    return v1

    .line 239
    :cond_56
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_57

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v0, :cond_58

    :cond_57
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_59

    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, p0, :cond_59

    :cond_58
    return v3

    :cond_59
    const/4 p0, 0x0

    return p0
.end method

.method public static getAllPositions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getImportantParameter(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/enums/Parameter;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_0

    .line 15
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->GOALKEEPING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v3, :cond_1

    .line 17
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v5, :cond_46

    .line 19
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_2
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/16 v8, 0xc

    if-eq p0, v1, :cond_3e

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_3

    goto/16 :goto_3e

    .line 37
    :cond_3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq p0, v1, :cond_36

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v1, :cond_36

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v1, :cond_36

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_4

    goto/16 :goto_35

    .line 54
    :cond_4
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v11, 0x8

    if-ne p0, v1, :cond_c

    const/4 p0, 0x0

    :goto_3
    if-ge p0, v8, :cond_5

    .line 56
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_4
    if-ge p0, v2, :cond_6

    .line 58
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_5
    if-ge p0, v11, :cond_7

    .line 60
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_7
    const/4 p0, 0x0

    :goto_6
    if-ge p0, v11, :cond_8

    .line 62
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_8
    const/4 p0, 0x0

    :goto_7
    if-ge p0, v5, :cond_9

    .line 64
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_9
    const/4 p0, 0x0

    :goto_8
    if-ge p0, v3, :cond_a

    .line 66
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_a
    const/4 p0, 0x0

    :goto_9
    if-ge p0, v3, :cond_b

    .line 68
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_b
    :goto_a
    if-ge v4, v9, :cond_46

    .line 70
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 71
    :cond_c
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v2, 0x5

    if-eq p0, v1, :cond_2e

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_d

    goto/16 :goto_2c

    .line 88
    :cond_d
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_15

    const/4 p0, 0x0

    :goto_b
    if-ge p0, v2, :cond_e

    .line 90
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_e
    const/4 p0, 0x0

    :goto_c
    if-ge p0, v2, :cond_f

    .line 92
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_f
    const/4 p0, 0x0

    :goto_d
    if-ge p0, v9, :cond_10

    .line 94
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    :cond_10
    const/4 p0, 0x0

    :goto_e
    if-ge p0, v7, :cond_11

    .line 96
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_11
    const/4 p0, 0x0

    :goto_f
    if-ge p0, v5, :cond_12

    .line 98
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    :cond_12
    const/4 p0, 0x0

    :goto_10
    if-ge p0, v10, :cond_13

    .line 100
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_10

    :cond_13
    const/4 p0, 0x0

    :goto_11
    if-ge p0, v3, :cond_14

    .line 102
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    :cond_14
    :goto_12
    if-ge v4, v2, :cond_46

    .line 104
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 105
    :cond_15
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v1, :cond_26

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_16

    goto/16 :goto_23

    .line 122
    :cond_16
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_1e

    const/4 p0, 0x0

    :goto_13
    if-ge p0, v5, :cond_17

    .line 124
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_13

    :cond_17
    const/4 p0, 0x0

    :goto_14
    if-ge p0, v3, :cond_18

    .line 126
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    :cond_18
    const/4 p0, 0x0

    :goto_15
    if-ge p0, v3, :cond_19

    .line 128
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_15

    :cond_19
    const/4 p0, 0x0

    :goto_16
    if-ge p0, v2, :cond_1a

    .line 130
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_16

    :cond_1a
    const/4 p0, 0x0

    :goto_17
    if-ge p0, v10, :cond_1b

    .line 132
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_1b
    const/4 p0, 0x0

    :goto_18
    if-ge p0, v2, :cond_1c

    .line 134
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_18

    :cond_1c
    const/4 p0, 0x0

    :goto_19
    if-ge p0, v2, :cond_1d

    .line 136
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_19

    :cond_1d
    :goto_1a
    if-ge v4, v2, :cond_46

    .line 138
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 139
    :cond_1e
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_46

    const/4 p0, 0x0

    :goto_1b
    if-ge p0, v5, :cond_1f

    .line 141
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_1f
    const/4 p0, 0x0

    :goto_1c
    if-ge p0, v3, :cond_20

    .line 143
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_20
    const/4 p0, 0x0

    :goto_1d
    if-ge p0, v2, :cond_21

    .line 145
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1d

    :cond_21
    const/4 p0, 0x0

    :goto_1e
    if-ge p0, v3, :cond_22

    .line 147
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_22
    const/4 p0, 0x0

    :goto_1f
    if-ge p0, v3, :cond_23

    .line 149
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_23
    const/4 p0, 0x0

    :goto_20
    if-ge p0, v2, :cond_24

    .line 151
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_20

    :cond_24
    const/4 p0, 0x0

    :goto_21
    if-ge p0, v2, :cond_25

    .line 153
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    :cond_25
    :goto_22
    if-ge v4, v2, :cond_46

    .line 155
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_26
    :goto_23
    const/4 p0, 0x0

    :goto_24
    if-ge p0, v5, :cond_27

    .line 107
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_24

    :cond_27
    const/4 p0, 0x0

    :goto_25
    if-ge p0, v3, :cond_28

    .line 109
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    :cond_28
    const/4 p0, 0x0

    :goto_26
    if-ge p0, v3, :cond_29

    .line 111
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_26

    :cond_29
    const/4 p0, 0x0

    :goto_27
    if-ge p0, v10, :cond_2a

    .line 113
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_27

    :cond_2a
    const/4 p0, 0x0

    :goto_28
    if-ge p0, v2, :cond_2b

    .line 115
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_28

    :cond_2b
    const/4 p0, 0x0

    :goto_29
    if-ge p0, v2, :cond_2c

    .line 117
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_29

    :cond_2c
    const/4 p0, 0x0

    :goto_2a
    if-ge p0, v2, :cond_2d

    .line 119
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2a

    :cond_2d
    :goto_2b
    if-ge v4, v2, :cond_46

    .line 121
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_2e
    :goto_2c
    const/4 p0, 0x0

    :goto_2d
    if-ge p0, v3, :cond_2f

    .line 73
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2d

    :cond_2f
    const/4 p0, 0x0

    :goto_2e
    if-ge p0, v5, :cond_30

    .line 75
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2e

    :cond_30
    const/4 p0, 0x0

    :goto_2f
    if-ge p0, v3, :cond_31

    .line 77
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2f

    :cond_31
    const/4 p0, 0x0

    :goto_30
    if-ge p0, v11, :cond_32

    .line 79
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_30

    :cond_32
    const/4 p0, 0x0

    :goto_31
    if-ge p0, v8, :cond_33

    .line 81
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_31

    :cond_33
    const/4 p0, 0x0

    :goto_32
    if-ge p0, v10, :cond_34

    .line 83
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_32

    :cond_34
    const/4 p0, 0x0

    :goto_33
    if-ge p0, v6, :cond_35

    .line 85
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_33

    :cond_35
    :goto_34
    if-ge v4, v2, :cond_46

    .line 87
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_36
    :goto_35
    const/4 p0, 0x0

    :goto_36
    if-ge p0, v2, :cond_37

    .line 39
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_36

    :cond_37
    const/4 p0, 0x0

    :goto_37
    if-ge p0, v2, :cond_38

    .line 41
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_37

    :cond_38
    const/4 p0, 0x0

    :goto_38
    if-ge p0, v3, :cond_39

    .line 43
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_38

    :cond_39
    const/4 p0, 0x0

    :goto_39
    if-ge p0, v7, :cond_3a

    .line 45
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_39

    :cond_3a
    const/4 p0, 0x0

    :goto_3a
    if-ge p0, v9, :cond_3b

    .line 47
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3a

    :cond_3b
    const/4 p0, 0x0

    :goto_3b
    if-ge p0, v3, :cond_3c

    .line 49
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3b

    :cond_3c
    const/4 p0, 0x0

    :goto_3c
    if-ge p0, v10, :cond_3d

    .line 51
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3c

    :cond_3d
    :goto_3d
    if-ge v4, v5, :cond_46

    .line 53
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    :goto_3f
    if-ge p0, v8, :cond_3f

    .line 22
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3f

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    if-ge p0, v8, :cond_40

    .line 24
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_40

    :cond_40
    const/4 p0, 0x0

    :goto_41
    if-ge p0, v7, :cond_41

    .line 26
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_41

    :cond_41
    const/4 p0, 0x0

    :goto_42
    if-ge p0, v6, :cond_42

    .line 28
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_42

    :cond_42
    const/4 p0, 0x0

    :goto_43
    if-ge p0, v5, :cond_43

    .line 30
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_43

    :cond_43
    const/4 p0, 0x0

    :goto_44
    if-ge p0, v5, :cond_44

    .line 32
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_44

    :cond_44
    const/4 p0, 0x0

    :goto_45
    if-ge p0, v5, :cond_45

    .line 34
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_45

    :cond_45
    :goto_46
    if-ge v4, v5, :cond_46

    .line 36
    sget-object p0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_46
    return-object v0
.end method

.method public static isPositionOffensive(Lpl/mkrstudio/truefootball3/enums/Position;)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 247
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 249
    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_8

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_1

    goto :goto_3

    .line 251
    :cond_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_7

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_7

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2

    goto :goto_2

    .line 253
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3

    goto :goto_1

    .line 255
    :cond_3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xa

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x6

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_7
    :goto_2
    const/4 p0, 0x2

    return p0

    :cond_8
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isPositionOffensiveForAssists(Lpl/mkrstudio/truefootball3/enums/Position;)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 262
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 264
    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_9

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_1

    goto :goto_3

    .line 266
    :cond_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x3

    if-eq p0, v0, :cond_8

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_8

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_2

    goto :goto_2

    .line 268
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_8

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_3

    goto :goto_2

    .line 270
    :cond_3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_7

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_7

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_4

    goto :goto_1

    .line 272
    :cond_4
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p0, v0, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x6

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x5

    return p0

    :cond_8
    :goto_2
    return v1

    :cond_9
    :goto_3
    const/4 p0, 0x1

    return p0
.end method
