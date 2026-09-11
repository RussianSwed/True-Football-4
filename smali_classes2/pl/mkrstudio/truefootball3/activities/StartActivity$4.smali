.class Lpl/mkrstudio/truefootball3/activities/StartActivity$4;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/StartActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 208
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

    const-class v2, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
