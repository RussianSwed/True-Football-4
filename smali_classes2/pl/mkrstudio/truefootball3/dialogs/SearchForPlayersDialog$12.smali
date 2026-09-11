.class Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;
.super Ljava/lang/Object;
.source "SearchForPlayersDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initMaxAgeEditText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

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

    const-string p1, "40"

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 405
    :try_start_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    .line 406
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    const-string p3, "16"

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x28

    if-le p2, p3, :cond_1

    .line 408
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
