.class Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabInfo"
.end annotation


# instance fields
.field args:Landroid/os/Bundle;

.field clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field fragment:Landroidx/fragment/app/Fragment;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "tag",
            "clazz",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1262
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->tag:Ljava/lang/String;

    .line 1264
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->clss:Ljava/lang/Class;

    .line 1265
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method
