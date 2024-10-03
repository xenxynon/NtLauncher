.class public final Lcom/nothing/launcher/widgets/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/widgets/d;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/widgets/d;

.field final synthetic h:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/widgets/d;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/widgets/d$a;->g:Lcom/nothing/launcher/widgets/d;

    iput-object p2, p0, Lcom/nothing/launcher/widgets/d$a;->h:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/widgets/d$a;->g:Lcom/nothing/launcher/widgets/d;

    iget-object p0, p0, Lcom/nothing/launcher/widgets/d$a;->h:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
