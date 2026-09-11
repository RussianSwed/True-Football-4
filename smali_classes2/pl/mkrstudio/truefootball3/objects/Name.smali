.class public Lpl/mkrstudio/truefootball3/objects/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6006a185f6b104b8L


# instance fields
.field chance:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Name;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "chance"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Name;->name:Ljava/lang/String;

    .line 19
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/Name;->chance:I

    return-void
.end method


# virtual methods
.method public getChance()I
    .locals 1

    .line 33
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Name;->chance:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Name;->name:Ljava/lang/String;

    return-object v0
.end method
