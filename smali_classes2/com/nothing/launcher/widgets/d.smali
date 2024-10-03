.class public final Lcom/nothing/launcher/widgets/d;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 1

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p4, 0x2

    new-array p4, p4, [F

    sub-int/2addr p3, p5

    int-to-float p3, p3

    const/4 p5, 0x0

    aput p3, p4, p5

    const/4 p3, 0x1

    const/4 v0, 0x0

    aput v0, p4, p3

    const-string p3, "translationY"

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/nothing/launcher/widgets/d$a;

    invoke-direct {p3, p0, p1}, Lcom/nothing/launcher/widgets/d$a;-><init>(Lcom/nothing/launcher/widgets/d;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    return p5
.end method
