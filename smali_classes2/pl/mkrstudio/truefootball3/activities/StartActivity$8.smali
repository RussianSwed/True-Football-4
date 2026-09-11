.class Lpl/mkrstudio/truefootball3/activities/StartActivity$8;
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

    .line 235
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

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
            "v"
        }
    .end annotation

    .line 238
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$8;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->show()V

    return-void
.end method
