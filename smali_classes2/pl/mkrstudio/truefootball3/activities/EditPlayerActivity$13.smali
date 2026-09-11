.class Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;
.super Ljava/lang/Object;
.source "EditPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initAgeEditText()V
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

    .line 353
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    if-nez p2, :cond_1

    .line 358
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    .line 359
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    const-string p2, "16"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_1

    .line 361
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    const-string p2, "40"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    const-string p2, "25"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
