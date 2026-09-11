.class Lpl/mkrstudio/truefootball3/activities/EditorActivity$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditorActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 339
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
