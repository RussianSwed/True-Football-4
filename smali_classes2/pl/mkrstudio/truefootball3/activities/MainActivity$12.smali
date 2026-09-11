.class Lpl/mkrstudio/truefootball3/activities/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1180
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1184
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setWorld(Lpl/mkrstudio/truefootball3/objects/World;)V

    .line 1185
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 1186
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1187
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
