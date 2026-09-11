.class public Lpl/mkrstudio/truefootball3/helpers/WorldHelper;
.super Ljava/lang/Object;
.source "WorldHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDistance(Lpl/mkrstudio/truefootball3/objects/Zone;Lpl/mkrstudio/truefootball3/objects/Zone;)F
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zone1",
            "zone2"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "central_east_europe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "south_east_europe"

    const-string v4, "east_europe"

    const-string v6, "middle_east"

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v15, -0x1

    const/high16 v16, 0x40400000    # 3.0f

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v2, :cond_9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "oceania"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    return v10

    :pswitch_0
    return v16

    :pswitch_1
    return v17

    :pswitch_2
    return v16

    :pswitch_3
    return v17

    .line 25
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 26
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_2
    const/4 v5, -0x1

    goto :goto_3

    :sswitch_8
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v5, 0x7

    goto :goto_3

    :sswitch_9
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v5, 0x6

    goto :goto_3

    :sswitch_a
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v5, 0x4

    goto :goto_3

    :sswitch_c
    const-string v1, "central_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/4 v5, 0x3

    goto :goto_3

    :sswitch_d
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v5, 0x2

    goto :goto_3

    :sswitch_e
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2

    :cond_10
    const/4 v5, 0x1

    goto :goto_3

    :sswitch_f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    const/4 v5, 0x0

    :goto_3
    packed-switch v5, :pswitch_data_1

    return v10

    :pswitch_4
    return v16

    :pswitch_5
    return v17

    :pswitch_6
    return v16

    :pswitch_7
    return v17

    :pswitch_8
    return v16

    :pswitch_9
    return v17

    .line 38
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v5, "north_europe"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v2, :cond_1a

    .line 39
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_4
    const/4 v7, -0x1

    goto :goto_5

    :sswitch_10
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    const/4 v7, 0x6

    goto :goto_5

    :sswitch_11
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    const/4 v7, 0x5

    goto :goto_5

    :sswitch_12
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    const/4 v7, 0x4

    goto :goto_5

    :sswitch_13
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    const/4 v7, 0x3

    goto :goto_5

    :sswitch_14
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    const/4 v7, 0x2

    goto :goto_5

    :sswitch_15
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4

    :cond_18
    const/4 v7, 0x1

    goto :goto_5

    :sswitch_16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_4

    :cond_19
    const/4 v7, 0x0

    :goto_5
    packed-switch v7, :pswitch_data_2

    return v10

    :pswitch_a
    return v17

    :pswitch_b
    return v5

    :pswitch_c
    return v16

    :pswitch_d
    return v17

    :pswitch_e
    return v16

    .line 50
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 51
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    :goto_6
    const/4 v7, -0x1

    goto :goto_7

    :sswitch_17
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    const/4 v7, 0x6

    goto :goto_7

    :sswitch_18
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6

    :cond_1c
    const/4 v7, 0x5

    goto :goto_7

    :sswitch_19
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    const/4 v7, 0x4

    goto :goto_7

    :sswitch_1a
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_6

    :cond_1e
    const/4 v7, 0x3

    goto :goto_7

    :sswitch_1b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_6

    :cond_1f
    const/4 v7, 0x2

    goto :goto_7

    :sswitch_1c
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_6

    :cond_20
    const/4 v7, 0x1

    goto :goto_7

    :sswitch_1d
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_6

    :cond_21
    const/4 v7, 0x0

    :goto_7
    packed-switch v7, :pswitch_data_3

    return v10

    :pswitch_f
    return v16

    :pswitch_10
    return v17

    :pswitch_11
    return v16

    :pswitch_12
    return v17

    :pswitch_13
    return v16

    .line 62
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "west_europe"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 63
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4

    :goto_8
    const/4 v7, -0x1

    goto :goto_9

    :sswitch_1e
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_8

    :cond_23
    const/4 v7, 0x6

    goto :goto_9

    :sswitch_1f
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_8

    :cond_24
    const/4 v7, 0x5

    goto :goto_9

    :sswitch_20
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_8

    :cond_25
    const/4 v7, 0x4

    goto :goto_9

    :sswitch_21
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_8

    :cond_26
    const/4 v7, 0x3

    goto :goto_9

    :sswitch_22
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_8

    :cond_27
    const/4 v7, 0x2

    goto :goto_9

    :sswitch_23
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_8

    :cond_28
    const/4 v7, 0x1

    goto :goto_9

    :sswitch_24
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_8

    :cond_29
    const/4 v7, 0x0

    :goto_9
    packed-switch v7, :pswitch_data_4

    return v10

    :pswitch_14
    return v17

    :pswitch_15
    return v16

    :pswitch_16
    return v17

    :pswitch_17
    return v16

    :pswitch_18
    return v17

    :pswitch_19
    return v16

    .line 74
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "south_west_europe"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 75
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5

    goto :goto_a

    :sswitch_25
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_a

    :cond_2b
    const/4 v15, 0x7

    goto :goto_a

    :sswitch_26
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_a

    :cond_2c
    const/4 v15, 0x6

    goto :goto_a

    :sswitch_27
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_a

    :cond_2d
    const/4 v15, 0x5

    goto :goto_a

    :sswitch_28
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_a

    :cond_2e
    const/4 v15, 0x4

    goto :goto_a

    :sswitch_29
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_a

    :cond_2f
    const/4 v15, 0x3

    goto :goto_a

    :sswitch_2a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_a

    :cond_30
    const/4 v15, 0x2

    goto :goto_a

    :sswitch_2b
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_a

    :cond_31
    const/4 v15, 0x1

    goto :goto_a

    :sswitch_2c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_a

    :cond_32
    const/4 v15, 0x0

    :goto_a
    packed-switch v15, :pswitch_data_5

    return v10

    :pswitch_1a
    return v16

    :pswitch_1b
    return v17

    :pswitch_1c
    return v16

    :pswitch_1d
    return v17

    :pswitch_1e
    return v5

    :pswitch_1f
    return v17

    .line 87
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 88
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6

    goto/16 :goto_b

    :sswitch_2d
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_b

    :cond_34
    const/16 v0, 0x8

    const/16 v15, 0x8

    goto :goto_b

    :sswitch_2e
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_b

    :cond_35
    const/4 v15, 0x7

    goto :goto_b

    :sswitch_2f
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_b

    :cond_36
    const/4 v15, 0x6

    goto :goto_b

    :sswitch_30
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_b

    :cond_37
    const/4 v15, 0x5

    goto :goto_b

    :sswitch_31
    const-string v1, "south_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_b

    :cond_38
    const/4 v15, 0x4

    goto :goto_b

    :sswitch_32
    const-string v1, "uk_and_ireland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_b

    :cond_39
    const/4 v15, 0x3

    goto :goto_b

    :sswitch_33
    const-string v1, "central_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_b

    :cond_3a
    const/4 v15, 0x2

    goto :goto_b

    :sswitch_34
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_b

    :cond_3b
    const/4 v15, 0x1

    goto :goto_b

    :sswitch_35
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_b

    :cond_3c
    const/4 v15, 0x0

    :goto_b
    packed-switch v15, :pswitch_data_6

    return v10

    :pswitch_20
    return v5

    :pswitch_21
    return v16

    :pswitch_22
    return v17

    :pswitch_23
    return v16

    :pswitch_24
    return v5

    :pswitch_25
    return v17

    :pswitch_26
    return v16

    .line 101
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "uk_and_ireland"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 102
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7

    :goto_c
    const/4 v7, -0x1

    goto :goto_d

    :sswitch_36
    const-string v1, "north_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_c

    :cond_3e
    const/4 v7, 0x6

    goto :goto_d

    :sswitch_37
    const-string v1, "central_east_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_c

    :cond_3f
    const/4 v7, 0x5

    goto :goto_d

    :sswitch_38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_c

    :cond_40
    const/4 v7, 0x4

    goto :goto_d

    :sswitch_39
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_c

    :cond_41
    const/4 v7, 0x3

    goto :goto_d

    :sswitch_3a
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_c

    :cond_42
    const/4 v7, 0x2

    goto :goto_d

    :sswitch_3b
    const-string v1, "west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_c

    :cond_43
    const/4 v7, 0x1

    goto :goto_d

    :sswitch_3c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_c

    :cond_44
    const/4 v7, 0x0

    :goto_d
    packed-switch v7, :pswitch_data_7

    return v10

    :pswitch_27
    return v17

    :pswitch_28
    return v16

    :pswitch_29
    return v5

    :pswitch_2a
    return v17

    :pswitch_2b
    return v16

    .line 113
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "south_south_america"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "mexico"

    const-string v9, "canada"

    const-string v11, "brazil"

    const-string v12, "central_america"

    const-string v13, "north_south_america"

    if-eqz v2, :cond_4e

    .line 114
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8

    goto :goto_e

    :sswitch_3d
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_e

    :cond_46
    const/4 v15, 0x7

    goto :goto_e

    :sswitch_3e
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_e

    :cond_47
    const/4 v15, 0x6

    goto :goto_e

    :sswitch_3f
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_e

    :cond_48
    const/4 v15, 0x5

    goto :goto_e

    :sswitch_40
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_e

    :cond_49
    const/4 v15, 0x4

    goto :goto_e

    :sswitch_41
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_e

    :cond_4a
    const/4 v15, 0x3

    goto :goto_e

    :sswitch_42
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_e

    :cond_4b
    const/4 v15, 0x2

    goto :goto_e

    :sswitch_43
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_e

    :cond_4c
    const/4 v15, 0x1

    goto :goto_e

    :sswitch_44
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_e

    :cond_4d
    const/4 v15, 0x0

    :goto_e
    packed-switch v15, :pswitch_data_8

    return v10

    :pswitch_2c
    return v16

    :pswitch_2d
    return v5

    :pswitch_2e
    return v17

    :pswitch_2f
    return v16

    :pswitch_30
    return v5

    :pswitch_31
    return v17

    :pswitch_32
    return v16

    .line 126
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 127
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_9

    goto :goto_f

    :sswitch_45
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_f

    :cond_4f
    const/4 v15, 0x7

    goto :goto_f

    :sswitch_46
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_f

    :cond_50
    const/4 v15, 0x6

    goto :goto_f

    :sswitch_47
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_f

    :cond_51
    const/4 v15, 0x5

    goto :goto_f

    :sswitch_48
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_f

    :cond_52
    const/4 v15, 0x4

    goto :goto_f

    :sswitch_49
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_f

    :cond_53
    const/4 v15, 0x3

    goto :goto_f

    :sswitch_4a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_f

    :cond_54
    const/4 v15, 0x2

    goto :goto_f

    :sswitch_4b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_f

    :cond_55
    const/4 v15, 0x1

    goto :goto_f

    :sswitch_4c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_f

    :cond_56
    const/4 v15, 0x0

    :goto_f
    packed-switch v15, :pswitch_data_9

    return v10

    :pswitch_33
    return v16

    :pswitch_34
    return v17

    :pswitch_35
    return v16

    :pswitch_36
    return v5

    :pswitch_37
    return v17

    .line 139
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 140
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_a

    goto :goto_10

    :sswitch_4d
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_10

    :cond_58
    const/4 v15, 0x7

    goto :goto_10

    :sswitch_4e
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_10

    :cond_59
    const/4 v15, 0x6

    goto :goto_10

    :sswitch_4f
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_10

    :cond_5a
    const/4 v15, 0x5

    goto :goto_10

    :sswitch_50
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_10

    :cond_5b
    const/4 v15, 0x4

    goto :goto_10

    :sswitch_51
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_10

    :cond_5c
    const/4 v15, 0x3

    goto :goto_10

    :sswitch_52
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_10

    :cond_5d
    const/4 v15, 0x2

    goto :goto_10

    :sswitch_53
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_10

    :cond_5e
    const/4 v15, 0x1

    goto :goto_10

    :sswitch_54
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_10

    :cond_5f
    const/4 v15, 0x0

    :goto_10
    packed-switch v15, :pswitch_data_a

    return v10

    :pswitch_38
    return v16

    :pswitch_39
    return v5

    :pswitch_3a
    return v17

    :pswitch_3b
    return v16

    :pswitch_3c
    return v5

    :pswitch_3d
    return v16

    .line 152
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v14, "west_south_america"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 153
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b

    goto :goto_11

    :sswitch_55
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_11

    :cond_61
    const/4 v15, 0x7

    goto :goto_11

    :sswitch_56
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_11

    :cond_62
    const/4 v15, 0x6

    goto :goto_11

    :sswitch_57
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_11

    :cond_63
    const/4 v15, 0x5

    goto :goto_11

    :sswitch_58
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_11

    :cond_64
    const/4 v15, 0x4

    goto :goto_11

    :sswitch_59
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_11

    :cond_65
    const/4 v15, 0x3

    goto :goto_11

    :sswitch_5a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_11

    :cond_66
    const/4 v15, 0x2

    goto :goto_11

    :sswitch_5b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_11

    :cond_67
    const/4 v15, 0x1

    goto :goto_11

    :sswitch_5c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_11

    :cond_68
    const/4 v15, 0x0

    :goto_11
    packed-switch v15, :pswitch_data_b

    return v10

    :pswitch_3e
    return v16

    :pswitch_3f
    return v5

    :pswitch_40
    return v17

    :pswitch_41
    return v16

    :pswitch_42
    return v5

    :pswitch_43
    return v17

    :pswitch_44
    return v16

    .line 165
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 166
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c

    goto :goto_12

    :sswitch_5d
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_12

    :cond_6a
    const/4 v15, 0x7

    goto :goto_12

    :sswitch_5e
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_12

    :cond_6b
    const/4 v15, 0x6

    goto :goto_12

    :sswitch_5f
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_12

    :cond_6c
    const/4 v15, 0x5

    goto :goto_12

    :sswitch_60
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_12

    :cond_6d
    const/4 v15, 0x4

    goto :goto_12

    :sswitch_61
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_12

    :cond_6e
    const/4 v15, 0x3

    goto :goto_12

    :sswitch_62
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_12

    :cond_6f
    const/4 v15, 0x2

    goto :goto_12

    :sswitch_63
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_12

    :cond_70
    const/4 v15, 0x1

    goto :goto_12

    :sswitch_64
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_12

    :cond_71
    const/4 v15, 0x0

    :goto_12
    packed-switch v15, :pswitch_data_c

    return v10

    :pswitch_45
    return v16

    :pswitch_46
    return v17

    :pswitch_47
    return v5

    :pswitch_48
    return v17

    :pswitch_49
    return v5

    :pswitch_4a
    return v16

    .line 178
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v14, "usa"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 179
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d

    goto :goto_13

    :sswitch_65
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_13

    :cond_73
    const/4 v15, 0x7

    goto :goto_13

    :sswitch_66
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_13

    :cond_74
    const/4 v15, 0x6

    goto :goto_13

    :sswitch_67
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_13

    :cond_75
    const/4 v15, 0x5

    goto :goto_13

    :sswitch_68
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_13

    :cond_76
    const/4 v15, 0x4

    goto :goto_13

    :sswitch_69
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_13

    :cond_77
    const/4 v15, 0x3

    goto :goto_13

    :sswitch_6a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_13

    :cond_78
    const/4 v15, 0x2

    goto :goto_13

    :sswitch_6b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_13

    :cond_79
    const/4 v15, 0x1

    goto :goto_13

    :sswitch_6c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_13

    :cond_7a
    const/4 v15, 0x0

    :goto_13
    packed-switch v15, :pswitch_data_d

    return v10

    :pswitch_4b
    return v17

    :pswitch_4c
    return v16

    :pswitch_4d
    return v5

    :pswitch_4e
    return v17

    :pswitch_4f
    return v16

    :pswitch_50
    return v17

    .line 191
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 192
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_e

    :goto_14
    const/4 v5, -0x1

    goto :goto_15

    :sswitch_6d
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_14

    :cond_7c
    const/4 v5, 0x7

    goto :goto_15

    :sswitch_6e
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_14

    :cond_7d
    const/4 v5, 0x6

    goto :goto_15

    :sswitch_6f
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_14

    :cond_7e
    const/4 v5, 0x5

    goto :goto_15

    :sswitch_70
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_14

    :cond_7f
    const/4 v5, 0x4

    goto :goto_15

    :sswitch_71
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_14

    :cond_80
    const/4 v5, 0x3

    goto :goto_15

    :sswitch_72
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto :goto_14

    :cond_81
    const/4 v5, 0x2

    goto :goto_15

    :sswitch_73
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_14

    :cond_82
    const/4 v5, 0x1

    goto :goto_15

    :sswitch_74
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_14

    :cond_83
    const/4 v5, 0x0

    :goto_15
    packed-switch v5, :pswitch_data_e

    return v10

    :pswitch_51
    return v17

    :pswitch_52
    return v16

    :pswitch_53
    return v17

    .line 204
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 205
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_f

    :goto_16
    const/4 v5, -0x1

    goto :goto_17

    :sswitch_75
    const-string v1, "carribean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_16

    :cond_85
    const/4 v5, 0x7

    goto :goto_17

    :sswitch_76
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_16

    :cond_86
    const/4 v5, 0x6

    goto :goto_17

    :sswitch_77
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_16

    :cond_87
    const/4 v5, 0x5

    goto :goto_17

    :sswitch_78
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto :goto_16

    :cond_88
    const/4 v5, 0x4

    goto :goto_17

    :sswitch_79
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_16

    :cond_89
    const/4 v5, 0x3

    goto :goto_17

    :sswitch_7a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_16

    :cond_8a
    const/4 v5, 0x2

    goto :goto_17

    :sswitch_7b
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_16

    :cond_8b
    const/4 v5, 0x1

    goto :goto_17

    :sswitch_7c
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_16

    :cond_8c
    const/4 v5, 0x0

    :goto_17
    packed-switch v5, :pswitch_data_f

    return v10

    :pswitch_54
    return v17

    :pswitch_55
    return v16

    :pswitch_56
    return v17

    :pswitch_57
    return v16

    .line 217
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v14, "carribean"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 218
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_10

    :goto_18
    const/4 v5, -0x1

    goto :goto_19

    :sswitch_7d
    const-string v1, "usa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_18

    :cond_8e
    const/4 v5, 0x7

    goto :goto_19

    :sswitch_7e
    const-string v1, "west_south_america"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_18

    :cond_8f
    const/4 v5, 0x6

    goto :goto_19

    :sswitch_7f
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto :goto_18

    :cond_90
    const/4 v5, 0x5

    goto :goto_19

    :sswitch_80
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_18

    :cond_91
    const/4 v5, 0x4

    goto :goto_19

    :sswitch_81
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto :goto_18

    :cond_92
    const/4 v5, 0x3

    goto :goto_19

    :sswitch_82
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_18

    :cond_93
    const/4 v5, 0x2

    goto :goto_19

    :sswitch_83
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_18

    :cond_94
    const/4 v5, 0x1

    goto :goto_19

    :sswitch_84
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_18

    :cond_95
    const/4 v5, 0x0

    :goto_19
    packed-switch v5, :pswitch_data_10

    return v10

    :pswitch_58
    return v17

    :pswitch_59
    return v16

    :pswitch_5a
    return v17

    :pswitch_5b
    return v16

    .line 230
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "south_asia"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 231
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_11

    :goto_1a
    const/4 v9, -0x1

    goto :goto_1b

    :sswitch_85
    const-string v1, "east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_1a

    :cond_97
    const/4 v9, 0x4

    goto :goto_1b

    :sswitch_86
    const-string v1, "south_east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_1a

    :cond_98
    const/4 v9, 0x3

    goto :goto_1b

    :sswitch_87
    const-string v1, "australia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_1a

    :cond_99
    const/4 v9, 0x2

    goto :goto_1b

    :sswitch_88
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto :goto_1a

    :cond_9a
    const/4 v9, 0x1

    goto :goto_1b

    :sswitch_89
    const-string v1, "central_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_1a

    :cond_9b
    const/4 v9, 0x0

    :goto_1b
    packed-switch v9, :pswitch_data_11

    return v10

    :pswitch_5c
    return v16

    :pswitch_5d
    return v17

    :pswitch_5e
    return v5

    :pswitch_5f
    return v16

    :pswitch_60
    return v17

    .line 240
    :cond_9c
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "east_asia"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 241
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_12

    :goto_1c
    const/4 v9, -0x1

    goto :goto_1d

    :sswitch_8a
    const-string v1, "south_east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_1c

    :cond_9d
    const/4 v9, 0x4

    goto :goto_1d

    :sswitch_8b
    const-string v1, "australia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_1c

    :cond_9e
    const/4 v9, 0x3

    goto :goto_1d

    :sswitch_8c
    const-string v1, "south_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_1c

    :cond_9f
    const/4 v9, 0x2

    goto :goto_1d

    :sswitch_8d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_1c

    :cond_a0
    const/4 v9, 0x1

    goto :goto_1d

    :sswitch_8e
    const-string v1, "central_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_1c

    :cond_a1
    const/4 v9, 0x0

    :goto_1d
    packed-switch v9, :pswitch_data_12

    return v10

    :pswitch_61
    return v17

    :pswitch_62
    return v16

    :pswitch_63
    return v5

    :pswitch_64
    return v17

    .line 250
    :cond_a2
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v7, "central_asia"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 251
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_13

    :goto_1e
    const/4 v9, -0x1

    goto :goto_1f

    :sswitch_8f
    const-string v1, "east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_1e

    :cond_a3
    const/4 v9, 0x4

    goto :goto_1f

    :sswitch_90
    const-string v1, "south_east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto :goto_1e

    :cond_a4
    const/4 v9, 0x3

    goto :goto_1f

    :sswitch_91
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_1e

    :cond_a5
    const/4 v9, 0x2

    goto :goto_1f

    :sswitch_92
    const-string v1, "south_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto :goto_1e

    :cond_a6
    const/4 v9, 0x1

    goto :goto_1f

    :sswitch_93
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_1e

    :cond_a7
    const/4 v9, 0x0

    :goto_1f
    packed-switch v9, :pswitch_data_13

    return v10

    :pswitch_65
    return v17

    :pswitch_66
    return v16

    :pswitch_67
    return v17

    .line 260
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "south_east_asia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 261
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_14

    :goto_20
    const/4 v9, -0x1

    goto :goto_21

    :sswitch_94
    const-string v1, "east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_20

    :cond_a9
    const/4 v9, 0x4

    goto :goto_21

    :sswitch_95
    const-string v1, "australia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto :goto_20

    :cond_aa
    const/4 v9, 0x3

    goto :goto_21

    :sswitch_96
    const-string v1, "south_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto :goto_20

    :cond_ab
    const/4 v9, 0x2

    goto :goto_21

    :sswitch_97
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_20

    :cond_ac
    const/4 v9, 0x1

    goto :goto_21

    :sswitch_98
    const-string v1, "central_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto :goto_20

    :cond_ad
    const/4 v9, 0x0

    :goto_21
    packed-switch v9, :pswitch_data_14

    return v10

    :pswitch_68
    return v17

    :pswitch_69
    return v16

    :pswitch_6a
    return v17

    :pswitch_6b
    return v5

    :pswitch_6c
    return v16

    .line 270
    :cond_ae
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "australia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 271
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_15

    :goto_22
    const/4 v11, -0x1

    goto :goto_23

    :sswitch_99
    const-string v1, "east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto :goto_22

    :cond_af
    const/4 v11, 0x3

    goto :goto_23

    :sswitch_9a
    const-string v1, "south_east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto :goto_22

    :cond_b0
    const/4 v11, 0x2

    goto :goto_23

    :sswitch_9b
    const-string v1, "south_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_22

    :cond_b1
    const/4 v11, 0x1

    goto :goto_23

    :sswitch_9c
    const-string v1, "oceania"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_22

    :cond_b2
    const/4 v11, 0x0

    :goto_23
    packed-switch v11, :pswitch_data_15

    return v10

    :pswitch_6d
    return v16

    :pswitch_6e
    return v17

    :pswitch_6f
    return v16

    :pswitch_70
    return v17

    .line 279
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "north_africa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 280
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    goto :goto_24

    :sswitch_9d
    const-string v1, "south_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_24

    :cond_b4
    const/4 v15, 0x7

    goto :goto_24

    :sswitch_9e
    const-string v1, "central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_24

    :cond_b5
    const/4 v15, 0x6

    goto :goto_24

    :sswitch_9f
    const-string v1, "east_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_24

    :cond_b6
    const/4 v15, 0x5

    goto :goto_24

    :sswitch_a0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_24

    :cond_b7
    const/4 v15, 0x4

    goto :goto_24

    :sswitch_a1
    const-string v1, "north_central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_24

    :cond_b8
    const/4 v15, 0x3

    goto :goto_24

    :sswitch_a2
    const-string v1, "south_west_europe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto :goto_24

    :cond_b9
    const/4 v15, 0x2

    goto :goto_24

    :sswitch_a3
    const-string v1, "west_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    goto :goto_24

    :cond_ba
    const/4 v15, 0x1

    goto :goto_24

    :sswitch_a4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_24

    :cond_bb
    const/4 v15, 0x0

    :goto_24
    packed-switch v15, :pswitch_data_16

    return v10

    :pswitch_71
    return v5

    :pswitch_72
    return v16

    :pswitch_73
    return v17

    :pswitch_74
    return v16

    :pswitch_75
    return v5

    .line 292
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "north_central_africa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 293
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_17

    :goto_25
    const/4 v8, -0x1

    goto :goto_26

    :sswitch_a5
    const-string v1, "south_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto :goto_25

    :cond_bd
    const/4 v8, 0x5

    goto :goto_26

    :sswitch_a6
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    goto :goto_25

    :cond_be
    const/4 v8, 0x4

    goto :goto_26

    :sswitch_a7
    const-string v1, "central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto :goto_25

    :cond_bf
    const/4 v8, 0x3

    goto :goto_26

    :sswitch_a8
    const-string v1, "east_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto :goto_25

    :cond_c0
    const/4 v8, 0x2

    goto :goto_26

    :sswitch_a9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_25

    :cond_c1
    const/4 v8, 0x1

    goto :goto_26

    :sswitch_aa
    const-string v1, "west_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto :goto_25

    :cond_c2
    const/4 v8, 0x0

    :goto_26
    packed-switch v8, :pswitch_data_17

    return v10

    :pswitch_76
    return v16

    :pswitch_77
    return v17

    :pswitch_78
    return v5

    :pswitch_79
    return v17

    .line 303
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "west_africa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 304
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_18

    :goto_27
    const/4 v9, -0x1

    goto :goto_28

    :sswitch_ab
    const-string v1, "south_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto :goto_27

    :cond_c4
    const/4 v9, 0x4

    goto :goto_28

    :sswitch_ac
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    goto :goto_27

    :cond_c5
    const/4 v9, 0x3

    goto :goto_28

    :sswitch_ad
    const-string v1, "central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto :goto_27

    :cond_c6
    const/4 v9, 0x2

    goto :goto_28

    :sswitch_ae
    const-string v1, "east_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_27

    :cond_c7
    const/4 v9, 0x1

    goto :goto_28

    :sswitch_af
    const-string v1, "north_central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto :goto_27

    :cond_c8
    const/4 v9, 0x0

    :goto_28
    packed-switch v9, :pswitch_data_18

    return v10

    :pswitch_7a
    return v16

    :pswitch_7b
    return v17

    :pswitch_7c
    return v16

    :pswitch_7d
    return v17

    .line 313
    :cond_c9
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "central_africa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 314
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_19

    :goto_29
    const/4 v9, -0x1

    goto :goto_2a

    :sswitch_b0
    const-string v1, "south_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto :goto_29

    :cond_ca
    const/4 v9, 0x4

    goto :goto_2a

    :sswitch_b1
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto :goto_29

    :cond_cb
    const/4 v9, 0x3

    goto :goto_2a

    :sswitch_b2
    const-string v1, "east_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_29

    :cond_cc
    const/4 v9, 0x2

    goto :goto_2a

    :sswitch_b3
    const-string v1, "north_central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto :goto_29

    :cond_cd
    const/4 v9, 0x1

    goto :goto_2a

    :sswitch_b4
    const-string v1, "west_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto :goto_29

    :cond_ce
    const/4 v9, 0x0

    :goto_2a
    packed-switch v9, :pswitch_data_19

    return v10

    :pswitch_7e
    return v17

    :pswitch_7f
    return v16

    :pswitch_80
    return v17

    .line 323
    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "east_africa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 324
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    :goto_2b
    const/4 v9, -0x1

    goto :goto_2c

    :sswitch_b5
    const-string v1, "south_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    goto :goto_2b

    :cond_d0
    const/4 v9, 0x4

    goto :goto_2c

    :sswitch_b6
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto :goto_2b

    :cond_d1
    const/4 v9, 0x3

    goto :goto_2c

    :sswitch_b7
    const-string v1, "central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_2b

    :cond_d2
    const/4 v9, 0x2

    goto :goto_2c

    :sswitch_b8
    const-string v1, "north_central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_2b

    :cond_d3
    const/4 v9, 0x1

    goto :goto_2c

    :sswitch_b9
    const-string v1, "west_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    goto :goto_2b

    :cond_d4
    const/4 v9, 0x0

    :goto_2c
    packed-switch v9, :pswitch_data_1a

    return v10

    :pswitch_81
    return v16

    :pswitch_82
    return v17

    :pswitch_83
    return v16

    .line 333
    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "south_africa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 334
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1b

    :goto_2d
    const/4 v9, -0x1

    goto :goto_2e

    :sswitch_ba
    const-string v1, "north_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_2d

    :cond_d6
    const/4 v9, 0x4

    goto :goto_2e

    :sswitch_bb
    const-string v1, "central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto :goto_2d

    :cond_d7
    const/4 v9, 0x3

    goto :goto_2e

    :sswitch_bc
    const-string v1, "east_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    goto :goto_2d

    :cond_d8
    const/4 v9, 0x2

    goto :goto_2e

    :sswitch_bd
    const-string v1, "north_central_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto :goto_2d

    :cond_d9
    const/4 v9, 0x1

    goto :goto_2e

    :sswitch_be
    const-string v1, "west_africa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto :goto_2d

    :cond_da
    const/4 v9, 0x0

    :goto_2e
    packed-switch v9, :pswitch_data_1b

    return v10

    :pswitch_84
    return v5

    :pswitch_85
    return v17

    :pswitch_86
    return v16

    .line 343
    :cond_db
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oceania"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 344
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    :goto_2f
    const/4 v11, -0x1

    goto :goto_30

    :sswitch_bf
    const-string v1, "east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto :goto_2f

    :cond_dc
    const/4 v11, 0x3

    goto :goto_30

    :sswitch_c0
    const-string v1, "south_east_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    goto :goto_2f

    :cond_dd
    const/4 v11, 0x2

    goto :goto_30

    :sswitch_c1
    const-string v1, "australia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto :goto_2f

    :cond_de
    const/4 v11, 0x1

    goto :goto_30

    :sswitch_c2
    const-string v1, "south_asia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto :goto_2f

    :cond_df
    const/4 v11, 0x0

    :goto_30
    packed-switch v11, :pswitch_data_1c

    return v10

    :pswitch_87
    return v16

    :pswitch_88
    return v17

    :pswitch_89
    return v16

    :cond_e0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_7
        -0x678161ce -> :sswitch_6
        -0x617f816a -> :sswitch_5
        -0x33058540 -> :sswitch_4
        0x1914f867 -> :sswitch_3
        0x1a4731b6 -> :sswitch_2
        0x4f444824 -> :sswitch_1
        0x5d1f2a1c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_f
        -0x678161ce -> :sswitch_e
        -0x33058540 -> :sswitch_d
        -0x164b3eac -> :sswitch_c
        0x1914f867 -> :sswitch_b
        0x1a4731b6 -> :sswitch_a
        0x57be0c5a -> :sswitch_9
        0x5d1f2a1c -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_16
        -0x678161ce -> :sswitch_15
        -0x33058540 -> :sswitch_14
        0x1914f867 -> :sswitch_13
        0x1a4731b6 -> :sswitch_12
        0x4f444824 -> :sswitch_11
        0x57be0c5a -> :sswitch_10
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x678161ce -> :sswitch_1d
        -0x33058540 -> :sswitch_1c
        0x1914f867 -> :sswitch_1b
        0x1a4731b6 -> :sswitch_1a
        0x4f444824 -> :sswitch_19
        0x57be0c5a -> :sswitch_18
        0x5d1f2a1c -> :sswitch_17
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_24
        -0x33058540 -> :sswitch_23
        0x1914f867 -> :sswitch_22
        0x1a4731b6 -> :sswitch_21
        0x4f444824 -> :sswitch_20
        0x57be0c5a -> :sswitch_1f
        0x5d1f2a1c -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_2c
        -0x678161ce -> :sswitch_2b
        0x1914f867 -> :sswitch_2a
        0x1a4731b6 -> :sswitch_29
        0x4f444824 -> :sswitch_28
        0x55784ef4 -> :sswitch_27
        0x57be0c5a -> :sswitch_26
        0x5d1f2a1c -> :sswitch_25
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_35
        -0x678161ce -> :sswitch_34
        -0x164b3eac -> :sswitch_33
        0x1a4731b6 -> :sswitch_32
        0x2fc6dbfc -> :sswitch_31
        0x4f444824 -> :sswitch_30
        0x55784ef4 -> :sswitch_2f
        0x57be0c5a -> :sswitch_2e
        0x5d1f2a1c -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_3c
        -0x678161ce -> :sswitch_3b
        -0x33058540 -> :sswitch_3a
        0x1914f867 -> :sswitch_39
        0x4f444824 -> :sswitch_38
        0x57be0c5a -> :sswitch_37
        0x5d1f2a1c -> :sswitch_36
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x68be52bc -> :sswitch_44
        -0x5250ac94 -> :sswitch_43
        -0x5185d932 -> :sswitch_42
        -0x40385b4b -> :sswitch_41
        -0x254ce01e -> :sswitch_40
        -0x23dcf8f4 -> :sswitch_3f
        0x1c583 -> :sswitch_3e
        0x9cd7f3b -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x68be52bc -> :sswitch_4c
        -0x5250ac94 -> :sswitch_4b
        -0x5185d932 -> :sswitch_4a
        -0x40385b4b -> :sswitch_49
        -0x2efb5d56 -> :sswitch_48
        -0x23dcf8f4 -> :sswitch_47
        0x1c583 -> :sswitch_46
        0x9cd7f3b -> :sswitch_45
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x68be52bc -> :sswitch_54
        -0x5185d932 -> :sswitch_53
        -0x40385b4b -> :sswitch_52
        -0x2efb5d56 -> :sswitch_51
        -0x254ce01e -> :sswitch_50
        -0x23dcf8f4 -> :sswitch_4f
        0x1c583 -> :sswitch_4e
        0x9cd7f3b -> :sswitch_4d
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x68be52bc -> :sswitch_5c
        -0x5250ac94 -> :sswitch_5b
        -0x5185d932 -> :sswitch_5a
        -0x40385b4b -> :sswitch_59
        -0x2efb5d56 -> :sswitch_58
        -0x254ce01e -> :sswitch_57
        0x1c583 -> :sswitch_56
        0x9cd7f3b -> :sswitch_55
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        -0x68be52bc -> :sswitch_64
        -0x5250ac94 -> :sswitch_63
        -0x40385b4b -> :sswitch_62
        -0x2efb5d56 -> :sswitch_61
        -0x254ce01e -> :sswitch_60
        -0x23dcf8f4 -> :sswitch_5f
        0x1c583 -> :sswitch_5e
        0x9cd7f3b -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :sswitch_data_d
    .sparse-switch
        -0x68be52bc -> :sswitch_6c
        -0x5250ac94 -> :sswitch_6b
        -0x5185d932 -> :sswitch_6a
        -0x40385b4b -> :sswitch_69
        -0x2efb5d56 -> :sswitch_68
        -0x254ce01e -> :sswitch_67
        -0x23dcf8f4 -> :sswitch_66
        0x9cd7f3b -> :sswitch_65
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :sswitch_data_e
    .sparse-switch
        -0x68be52bc -> :sswitch_74
        -0x5250ac94 -> :sswitch_73
        -0x5185d932 -> :sswitch_72
        -0x2efb5d56 -> :sswitch_71
        -0x254ce01e -> :sswitch_70
        -0x23dcf8f4 -> :sswitch_6f
        0x1c583 -> :sswitch_6e
        0x9cd7f3b -> :sswitch_6d
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch

    :sswitch_data_f
    .sparse-switch
        -0x5250ac94 -> :sswitch_7c
        -0x5185d932 -> :sswitch_7b
        -0x40385b4b -> :sswitch_7a
        -0x2efb5d56 -> :sswitch_79
        -0x254ce01e -> :sswitch_78
        -0x23dcf8f4 -> :sswitch_77
        0x1c583 -> :sswitch_76
        0x9cd7f3b -> :sswitch_75
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :sswitch_data_10
    .sparse-switch
        -0x68be52bc -> :sswitch_84
        -0x5250ac94 -> :sswitch_83
        -0x5185d932 -> :sswitch_82
        -0x40385b4b -> :sswitch_81
        -0x2efb5d56 -> :sswitch_80
        -0x254ce01e -> :sswitch_7f
        -0x23dcf8f4 -> :sswitch_7e
        0x1c583 -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_58
    .end packed-switch

    :sswitch_data_11
    .sparse-switch
        -0x164b3eac -> :sswitch_89
        0x1914f867 -> :sswitch_88
        0x37aa8980 -> :sswitch_87
        0x595ec7da -> :sswitch_86
        0x6a191fcc -> :sswitch_85
    .end sparse-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
    .end packed-switch

    :sswitch_data_12
    .sparse-switch
        -0x164b3eac -> :sswitch_8e
        0x1914f867 -> :sswitch_8d
        0x2fc6dbfc -> :sswitch_8c
        0x37aa8980 -> :sswitch_8b
        0x595ec7da -> :sswitch_8a
    .end sparse-switch

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_62
        :pswitch_61
    .end packed-switch

    :sswitch_data_13
    .sparse-switch
        0x1914f867 -> :sswitch_93
        0x2fc6dbfc -> :sswitch_92
        0x4f444824 -> :sswitch_91
        0x595ec7da -> :sswitch_90
        0x6a191fcc -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :sswitch_data_14
    .sparse-switch
        -0x164b3eac -> :sswitch_98
        0x1914f867 -> :sswitch_97
        0x2fc6dbfc -> :sswitch_96
        0x37aa8980 -> :sswitch_95
        0x6a191fcc -> :sswitch_94
    .end sparse-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
    .end packed-switch

    :sswitch_data_15
    .sparse-switch
        -0x617f816a -> :sswitch_9c
        0x2fc6dbfc -> :sswitch_9b
        0x595ec7da -> :sswitch_9a
        0x6a191fcc -> :sswitch_99
    .end sparse-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
    .end packed-switch

    :sswitch_data_16
    .sparse-switch
        -0x7c3fdb4e -> :sswitch_a4
        -0x6f283cf6 -> :sswitch_a3
        -0x33058540 -> :sswitch_a2
        0x14df26fe -> :sswitch_a1
        0x1914f867 -> :sswitch_a0
        0x479d6cfc -> :sswitch_9f
        0x4ed6cc84 -> :sswitch_9e
        0x58ccdd2c -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_75
        :pswitch_74
        :pswitch_74
        :pswitch_73
        :pswitch_73
        :pswitch_72
        :pswitch_72
        :pswitch_71
    .end packed-switch

    :sswitch_data_17
    .sparse-switch
        -0x6f283cf6 -> :sswitch_aa
        0x1914f867 -> :sswitch_a9
        0x479d6cfc -> :sswitch_a8
        0x4ed6cc84 -> :sswitch_a7
        0x55784ef4 -> :sswitch_a6
        0x58ccdd2c -> :sswitch_a5
    .end sparse-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_76
    .end packed-switch

    :sswitch_data_18
    .sparse-switch
        0x14df26fe -> :sswitch_af
        0x479d6cfc -> :sswitch_ae
        0x4ed6cc84 -> :sswitch_ad
        0x55784ef4 -> :sswitch_ac
        0x58ccdd2c -> :sswitch_ab
    .end sparse-switch

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_7a
    .end packed-switch

    :sswitch_data_19
    .sparse-switch
        -0x6f283cf6 -> :sswitch_b4
        0x14df26fe -> :sswitch_b3
        0x479d6cfc -> :sswitch_b2
        0x55784ef4 -> :sswitch_b1
        0x58ccdd2c -> :sswitch_b0
    .end sparse-switch

    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
    .end packed-switch

    :sswitch_data_1a
    .sparse-switch
        -0x6f283cf6 -> :sswitch_b9
        0x14df26fe -> :sswitch_b8
        0x4ed6cc84 -> :sswitch_b7
        0x55784ef4 -> :sswitch_b6
        0x58ccdd2c -> :sswitch_b5
    .end sparse-switch

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_83
        :pswitch_82
        :pswitch_82
        :pswitch_81
        :pswitch_81
    .end packed-switch

    :sswitch_data_1b
    .sparse-switch
        -0x6f283cf6 -> :sswitch_be
        0x14df26fe -> :sswitch_bd
        0x479d6cfc -> :sswitch_bc
        0x4ed6cc84 -> :sswitch_bb
        0x55784ef4 -> :sswitch_ba
    .end sparse-switch

    :pswitch_data_1b
    .packed-switch 0x0
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_85
        :pswitch_84
    .end packed-switch

    :sswitch_data_1c
    .sparse-switch
        0x2fc6dbfc -> :sswitch_c2
        0x37aa8980 -> :sswitch_c1
        0x595ec7da -> :sswitch_c0
        0x6a191fcc -> :sswitch_bf
    .end sparse-switch

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_88
        :pswitch_87
    .end packed-switch
.end method

.method public static calculateDistanceModifier(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Country;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "countries",
            "country"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ")F"
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object p1

    const/4 v0, 0x0

    .line 357
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object p0

    .line 358
    invoke-static {p1, p0}, Lpl/mkrstudio/truefootball3/helpers/WorldHelper;->calculateDistance(Lpl/mkrstudio/truefootball3/objects/Zone;Lpl/mkrstudio/truefootball3/objects/Zone;)F

    move-result p0

    return p0
.end method
