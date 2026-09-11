.class public Lpl/mkrstudio/truefootball3/objects/FinanceItem;
.super Ljava/lang/Object;
.source "FinanceItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x18d18f674039ffd8L


# instance fields
.field private date:Ljava/lang/String;

.field private descriptionId:Ljava/lang/String;

.field private sum:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "date",
            "sum",
            "descriptionId"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->date:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->sum:J

    .line 18
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->descriptionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->descriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSum()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->sum:J

    return-wide v0
.end method

.method public getSum(D)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 24
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->sum:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->date:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptionId"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->descriptionId:Ljava/lang/String;

    return-void
.end method

.method public setSum(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sum"
        }
    .end annotation

    .line 40
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->sum:J

    return-void
.end method
