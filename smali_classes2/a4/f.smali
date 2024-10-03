.class public final La4/f;
.super La4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/f$b;
    }
.end annotation


# static fields
.field public static final r:La4/f$b;


# instance fields
.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/f$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La4/f;->r:La4/f$b;

    return-void
.end method

.method public constructor <init>(Lc3/a;Landroid/content/Context;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La4/b;-><init>(Lc3/a;Landroid/content/Context;)V

    new-instance p2, La4/f$a;

    invoke-direct {p2}, La4/f$a;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, La4/b;->f()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->bigFolderItemSize:I

    iput p1, p0, La4/f;->m:I

    invoke-virtual {p0}, La4/f;->h()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3ed1eb85    # 0.41f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, La4/f;->n:I

    const/4 p1, 0x7

    iput p1, p0, La4/f;->o:I

    const/4 p1, 0x3

    iput p1, p0, La4/f;->p:I

    const/4 p1, 0x2

    iput p1, p0, La4/f;->q:I

    return-void
.end method


# virtual methods
.method public g()I
    .locals 0

    iget p0, p0, La4/f;->o:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, La4/f;->m:I

    return p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, La4/f;->p:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, La4/f;->q:I

    return p0
.end method

.method public u()I
    .locals 0

    iget p0, p0, La4/f;->n:I

    return p0
.end method

.method public y(Lc3/a$c;Z)V
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lc3/a$c;->a()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/2addr v0, v1

    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v1

    invoke-virtual {p0}, La4/f;->p()I

    move-result v3

    if-lt v1, v3, :cond_3

    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v1

    invoke-virtual {p0}, La4/f;->p()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, La4/f;->q()I

    move-result v3

    rem-int/2addr v1, v3

    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v3

    invoke-virtual {p0}, La4/f;->p()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, La4/f;->q()I

    move-result v4

    div-int/2addr v3, v4

    if-eqz p2, :cond_1

    rsub-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, La4/b;->n()I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, La4/b;->n()I

    move-result p2

    invoke-virtual {p0}, La4/f;->h()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p0}, La4/b;->m()I

    move-result v2

    add-int/2addr p2, v2

    :goto_1
    invoke-virtual {p0}, La4/b;->n()I

    move-result v2

    invoke-virtual {p0}, La4/f;->h()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, La4/b;->m()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, La4/f;->u()I

    move-result v4

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, La4/f;->u()I

    move-result v4

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/b;->v()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/f;->u()I

    move-result p2

    mul-int/2addr p2, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/b;->t()I

    move-result p2

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lc3/a$c;->i(I)V

    invoke-virtual {p0}, La4/b;->v()I

    move-result p2

    add-int/2addr v2, p2

    invoke-virtual {p0}, La4/f;->u()I

    move-result p2

    mul-int/2addr p2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, La4/b;->t()I

    move-result p0

    mul-int/2addr v3, p0

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lc3/a$c;->j(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v1

    invoke-virtual {p0}, La4/f;->q()I

    move-result v3

    rem-int/2addr v1, v3

    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v3

    invoke-virtual {p0}, La4/f;->q()I

    move-result v4

    div-int/2addr v3, v4

    if-eqz p2, :cond_4

    rsub-int/lit8 p2, v1, 0x2

    add-int/lit8 v1, p2, -0x1

    :cond_4
    invoke-virtual {p0}, La4/f;->h()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, La4/f;->h()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, La4/b;->n()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/f;->h()I

    move-result p2

    mul-int/2addr p2, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, La4/b;->m()I

    move-result p2

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lc3/a$c;->i(I)V

    invoke-virtual {p0}, La4/b;->n()I

    move-result p2

    invoke-virtual {p0}, La4/f;->h()I

    move-result v0

    mul-int/2addr v0, v3

    add-int/2addr p2, v0

    invoke-virtual {p0}, La4/b;->m()I

    move-result p0

    mul-int/2addr v3, p0

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lc3/a$c;->j(I)V

    :goto_2
    return-void
.end method
