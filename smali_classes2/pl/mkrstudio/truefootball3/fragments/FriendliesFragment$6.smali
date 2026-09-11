.class Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$6;
.super Ljava/lang/Object;
.source "FriendliesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlies(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

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

    .line 239
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    invoke-interface {p1}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onArrangeFriendlyClicked()V

    return-void
.end method
