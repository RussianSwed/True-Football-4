.class Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

.field final synthetic val$autosaveModeSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$autosaveModeSpinner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->val$autosaveModeSpinner:Landroid/widget/Spinner;

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

    .line 225
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->val$autosaveModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->val$autosaveModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 226
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->val$autosaveModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 228
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->val$autosaveModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->val$autosaveModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 229
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableRightButton(Landroid/widget/Button;)V

    .line 230
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    .line 233
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    :goto_0
    return-void
.end method
