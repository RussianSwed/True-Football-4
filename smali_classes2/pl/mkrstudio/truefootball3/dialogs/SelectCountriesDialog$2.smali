.class Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$2;
.super Ljava/lang/Object;
.source "SelectCountriesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->dismiss()V

    return-void
.end method
