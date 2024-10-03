.class public final La4/e;
.super La4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/e$a;
    }
.end annotation


# static fields
.field public static final v:La4/e$a;


# instance fields
.field private final m:I

.field private final n:I

.field private o:F

.field private final p:Lc3/b;

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/e$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La4/e;->v:La4/e$a;

    return-void
.end method

.method public constructor <init>(Lc3/a;Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La4/b;-><init>(Lc3/a;Landroid/content/Context;)V

    invoke-virtual {p0}, La4/b;->f()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    invoke-static {p1}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalFolderSize(I)I

    move-result p1

    iput p1, p0, La4/e;->m:I

    invoke-virtual {p0}, La4/b;->f()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lj3/a;->h()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalFolderSize(I)I

    move-result v0

    iput v0, p0, La4/e;->n:I

    new-instance v0, Lc3/b;

    invoke-direct {v0, p2, p3}, Lc3/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    iput-object v0, p0, La4/e;->p:Lc3/b;

    iput p1, p0, La4/e;->q:I

    iput p1, p0, La4/e;->r:I

    const/4 p1, 0x1

    iput p1, p0, La4/e;->u:I

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;ZFLy5/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;ZF",
            "Ly5/p<",
            "-",
            "Landroid/animation/Animator;",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p3, "childPoint"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "play"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, La4/e;->m:I

    int-to-float p1, p1

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/4 p3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    new-array p2, v2, [F

    aput p1, p2, v1

    aput v0, p2, p3

    goto :goto_0

    :cond_0
    new-array p2, v2, [F

    aput v0, p2, v1

    aput p1, p2, p3

    :goto_0
    iget-object p0, p0, La4/e;->p:Lc3/b;

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "scaleAnim"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p0, p1}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            ">;",
            "Ly5/l<",
            "-",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const-string p3, "items"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pageViews"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_2

    iget-object p1, p0, La4/e;->p:Lc3/b;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lc3/a$c;

    if-eqz p2, :cond_0

    check-cast p1, Lc3/a$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lc3/a$c;

    invoke-direct {p1}, Lc3/a$c;-><init>()V

    :cond_1
    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object p2

    iget-object p0, p0, La4/e;->p:Lc3/b;

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, La4/e;->s:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, La4/e;->q:I

    return p0
.end method

.method public j(I)F
    .locals 0

    iget p0, p0, La4/e;->o:F

    return p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, La4/e;->t:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, La4/e;->u:I

    return p0
.end method

.method public u()I
    .locals 0

    iget p0, p0, La4/e;->r:I

    return p0
.end method

.method public w(II)V
    .locals 0

    return-void
.end method

.method public y(Lc3/a$c;Z)V
    .locals 1

    const-string p2, "params"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc3/a$c;->i(I)V

    invoke-virtual {p1, p2}, Lc3/a$c;->j(I)V

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, La4/e;->m:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, La4/e;->n:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, La4/e;->m:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget p0, p0, La4/e;->n:I

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, La4/e;->p:Lc3/b;

    invoke-virtual {p0}, Lc3/b;->a()V

    return-void
.end method
