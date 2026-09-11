.class synthetic Lpl/mkrstudio/truefootball3/views/ValuePicker$17;
.super Ljava/lang/Object;
.source "ValuePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 498
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->values()[Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$17;->$SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I

    :try_start_0
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->GASTRONOMY:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$17;->$SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->MAINTENANCE:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$17;->$SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->SECURITY:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$17;->$SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->SHOP:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$17;->$SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->TOURS:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
