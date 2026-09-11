.class Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;
.super Ljava/lang/Object;
.source "EditPlayerActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initSkillEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "actionId",
            "event"
        }
    .end annotation

    const-string p1, "1"

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 379
    :try_start_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 380
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
