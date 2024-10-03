.class public final Ld/c;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Ld/c;",
        "Ld/c$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final A:Ld/c;

.field private static volatile B:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Ld/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:Lt1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/m$e<",
            "Ld/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Z

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    sput-object v0, Ld/c;->A:Ld/c;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    invoke-static {}, Lt1/k;->emptyProtobufList()Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/c;->j:Lt1/m$e;

    const-string v0, ""

    iput-object v0, p0, Ld/c;->k:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ld/c;->t:F

    iput v0, p0, Ld/c;->u:F

    iput v0, p0, Ld/c;->v:F

    return-void
.end method

.method public static Q()Ld/c$b;
    .locals 1

    sget-object v0, Ld/c;->A:Ld/c;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Ld/c$b;

    return-object v0
.end method

.method private R(F)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->v:F

    return-void
.end method

.method private S(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->h:I

    return-void
.end method

.method private T(Z)V
    .locals 2

    iget v0, p0, Ld/c;->g:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    iput-boolean p1, p0, Ld/c;->x:Z

    return-void
.end method

.method private U(F)V
    .locals 2

    iget v0, p0, Ld/c;->g:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->z:F

    return-void
.end method

.method private V(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->i:I

    return-void
.end method

.method private W(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->o:I

    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ld/c;->g:I

    iput-object p1, p0, Ld/c;->k:Ljava/lang/String;

    return-void
.end method

.method private Y(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->l:I

    return-void
.end method

.method private Z(F)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->t:F

    return-void
.end method

.method static synthetic a()Ld/c;
    .locals 1

    sget-object v0, Ld/c;->A:Ld/c;

    return-object v0
.end method

.method private a0(F)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->u:F

    return-void
.end method

.method static synthetic b(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->S(I)V

    return-void
.end method

.method private b0(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->p:I

    return-void
.end method

.method static synthetic c(Ld/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->X(Ljava/lang/String;)V

    return-void
.end method

.method private c0(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->q:I

    return-void
.end method

.method static synthetic d(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->Y(I)V

    return-void
.end method

.method private d0(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->m:I

    return-void
.end method

.method static synthetic e(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->d0(I)V

    return-void
.end method

.method private e0(F)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->r:F

    return-void
.end method

.method static synthetic f(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->h0(I)V

    return-void
.end method

.method private f0(F)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->s:F

    return-void
.end method

.method static synthetic g(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->W(I)V

    return-void
.end method

.method private g0(I)V
    .locals 2

    iget v0, p0, Ld/c;->g:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->y:I

    return-void
.end method

.method static synthetic h(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->b0(I)V

    return-void
.end method

.method private h0(I)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Ld/c;->g:I

    iput p1, p0, Ld/c;->n:I

    return-void
.end method

.method static synthetic i(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->c0(I)V

    return-void
.end method

.method private i0(Z)V
    .locals 1

    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ld/c;->g:I

    iput-boolean p1, p0, Ld/c;->w:Z

    return-void
.end method

.method static synthetic j(Ld/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->e0(F)V

    return-void
.end method

.method static synthetic k(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->V(I)V

    return-void
.end method

.method static synthetic l(Ld/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->f0(F)V

    return-void
.end method

.method static synthetic m(Ld/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->Z(F)V

    return-void
.end method

.method static synthetic n(Ld/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->a0(F)V

    return-void
.end method

.method static synthetic o(Ld/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->R(F)V

    return-void
.end method

.method static synthetic p(Ld/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->i0(Z)V

    return-void
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Ld/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Ld/c;->A:Ld/c;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Ld/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->T(Z)V

    return-void
.end method

.method static synthetic r(Ld/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->g0(I)V

    return-void
.end method

.method static synthetic s(Ld/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->U(F)V

    return-void
.end method

.method static synthetic t(Ld/c;Ld/c$b;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;->u(Ld/c$b;)V

    return-void
.end method

.method private u(Ld/c$b;)V
    .locals 0

    invoke-direct {p0}, Ld/c;->v()V

    iget-object p0, p0, Ld/c;->j:Lt1/m$e;

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    check-cast p1, Ld/c;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/c;->j:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/c;->j:Lt1/m$e;

    :cond_0
    return-void
.end method

.method public static w()Ld/c;
    .locals 1

    sget-object v0, Ld/c;->A:Ld/c;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public B()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public D()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public G()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public H()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x1000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public I()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public J()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public K()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public L()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public M()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public N()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public O()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public P()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x4000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ld/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Ld/c;->B:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Ld/c;

    monitor-enter p0

    :try_start_0
    sget-object p1, Ld/c;->B:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Ld/c;->A:Ld/c;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Ld/c;->B:Lt1/u;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Ld/c;->B:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result v0

    goto/16 :goto_3

    :sswitch_0
    iget v0, p0, Ld/c;->g:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->n()F

    move-result v0

    iput v0, p0, Ld/c;->z:F

    goto :goto_1

    :sswitch_1
    iget v0, p0, Ld/c;->g:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->y:I

    goto :goto_1

    :sswitch_2
    iget v0, p0, Ld/c;->g:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->i()Z

    move-result v0

    iput-boolean v0, p0, Ld/c;->x:Z

    goto :goto_1

    :sswitch_3
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->i()Z

    move-result v0

    iput-boolean v0, p0, Ld/c;->w:Z

    goto :goto_1

    :sswitch_4
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->n()F

    move-result v0

    iput v0, p0, Ld/c;->v:F

    goto :goto_1

    :sswitch_5
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->n()F

    move-result v0

    iput v0, p0, Ld/c;->u:F

    goto :goto_1

    :sswitch_6
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->n()F

    move-result v0

    iput v0, p0, Ld/c;->t:F

    goto :goto_1

    :sswitch_7
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->n()F

    move-result v0

    iput v0, p0, Ld/c;->s:F

    goto :goto_1

    :sswitch_8
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->n()F

    move-result v0

    iput v0, p0, Ld/c;->r:F

    goto/16 :goto_1

    :sswitch_9
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->q:I

    goto/16 :goto_1

    :sswitch_a
    iget v0, p0, Ld/c;->g:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->p:I

    goto/16 :goto_1

    :sswitch_b
    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->o:I

    goto/16 :goto_1

    :sswitch_c
    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->n:I

    goto/16 :goto_1

    :sswitch_d
    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->m:I

    goto/16 :goto_1

    :sswitch_e
    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->l:I

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p2}, Lt1/f;->y()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ld/c;->g:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Ld/c;->g:I

    iput-object v0, p0, Ld/c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_10
    iget-object v0, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ld/c;->j:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/c;->j:Lt1/m$e;

    :cond_3
    iget-object v0, p0, Ld/c;->j:Lt1/m$e;

    invoke-static {}, Ld/c;->parser()Lt1/u;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v1

    check-cast v1, Ld/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_11
    iget v0, p0, Ld/c;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->i:I

    goto/16 :goto_1

    :sswitch_12
    iget v0, p0, Ld/c;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ld/c;->g:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    iput v0, p0, Ld/c;->h:I
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_13
    move p1, v1

    goto/16 :goto_1

    :goto_3
    if-nez v0, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lt1/n;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lt1/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    throw p0

    :cond_4
    :pswitch_2
    sget-object p0, Ld/c;->A:Ld/c;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Ld/c;

    invoke-virtual {p0}, Ld/c;->z()Z

    move-result p1

    iget v0, p0, Ld/c;->h:I

    invoke-virtual {p3}, Ld/c;->z()Z

    move-result v1

    iget v2, p3, Ld/c;->h:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->h:I

    invoke-virtual {p0}, Ld/c;->C()Z

    move-result p1

    iget v0, p0, Ld/c;->i:I

    invoke-virtual {p3}, Ld/c;->C()Z

    move-result v1

    iget v2, p3, Ld/c;->i:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->i:I

    iget-object p1, p0, Ld/c;->j:Lt1/m$e;

    iget-object v0, p3, Ld/c;->j:Lt1/m$e;

    invoke-interface {p2, p1, v0}, Lt1/k$j;->a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;

    move-result-object p1

    iput-object p1, p0, Ld/c;->j:Lt1/m$e;

    invoke-virtual {p0}, Ld/c;->E()Z

    move-result p1

    iget-object v0, p0, Ld/c;->k:Ljava/lang/String;

    invoke-virtual {p3}, Ld/c;->E()Z

    move-result v1

    iget-object v2, p3, Ld/c;->k:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/c;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ld/c;->F()Z

    move-result p1

    iget v0, p0, Ld/c;->l:I

    invoke-virtual {p3}, Ld/c;->F()Z

    move-result v1

    iget v2, p3, Ld/c;->l:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->l:I

    invoke-virtual {p0}, Ld/c;->K()Z

    move-result p1

    iget v0, p0, Ld/c;->m:I

    invoke-virtual {p3}, Ld/c;->K()Z

    move-result v1

    iget v2, p3, Ld/c;->m:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->m:I

    invoke-virtual {p0}, Ld/c;->O()Z

    move-result p1

    iget v0, p0, Ld/c;->n:I

    invoke-virtual {p3}, Ld/c;->O()Z

    move-result v1

    iget v2, p3, Ld/c;->n:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->n:I

    invoke-virtual {p0}, Ld/c;->D()Z

    move-result p1

    iget v0, p0, Ld/c;->o:I

    invoke-virtual {p3}, Ld/c;->D()Z

    move-result v1

    iget v2, p3, Ld/c;->o:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->o:I

    invoke-virtual {p0}, Ld/c;->I()Z

    move-result p1

    iget v0, p0, Ld/c;->p:I

    invoke-virtual {p3}, Ld/c;->I()Z

    move-result v1

    iget v2, p3, Ld/c;->p:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->p:I

    invoke-virtual {p0}, Ld/c;->J()Z

    move-result p1

    iget v0, p0, Ld/c;->q:I

    invoke-virtual {p3}, Ld/c;->J()Z

    move-result v1

    iget v2, p3, Ld/c;->q:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->q:I

    invoke-virtual {p0}, Ld/c;->L()Z

    move-result p1

    iget v0, p0, Ld/c;->r:F

    invoke-virtual {p3}, Ld/c;->L()Z

    move-result v1

    iget v2, p3, Ld/c;->r:F

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->e(ZFZF)F

    move-result p1

    iput p1, p0, Ld/c;->r:F

    invoke-virtual {p0}, Ld/c;->M()Z

    move-result p1

    iget v0, p0, Ld/c;->s:F

    invoke-virtual {p3}, Ld/c;->M()Z

    move-result v1

    iget v2, p3, Ld/c;->s:F

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->e(ZFZF)F

    move-result p1

    iput p1, p0, Ld/c;->s:F

    invoke-virtual {p0}, Ld/c;->G()Z

    move-result p1

    iget v0, p0, Ld/c;->t:F

    invoke-virtual {p3}, Ld/c;->G()Z

    move-result v1

    iget v2, p3, Ld/c;->t:F

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->e(ZFZF)F

    move-result p1

    iput p1, p0, Ld/c;->t:F

    invoke-virtual {p0}, Ld/c;->H()Z

    move-result p1

    iget v0, p0, Ld/c;->u:F

    invoke-virtual {p3}, Ld/c;->H()Z

    move-result v1

    iget v2, p3, Ld/c;->u:F

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->e(ZFZF)F

    move-result p1

    iput p1, p0, Ld/c;->u:F

    invoke-virtual {p0}, Ld/c;->y()Z

    move-result p1

    iget v0, p0, Ld/c;->v:F

    invoke-virtual {p3}, Ld/c;->y()Z

    move-result v1

    iget v2, p3, Ld/c;->v:F

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->e(ZFZF)F

    move-result p1

    iput p1, p0, Ld/c;->v:F

    invoke-virtual {p0}, Ld/c;->P()Z

    move-result p1

    iget-boolean v0, p0, Ld/c;->w:Z

    invoke-virtual {p3}, Ld/c;->P()Z

    move-result v1

    iget-boolean v2, p3, Ld/c;->w:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->j(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Ld/c;->w:Z

    invoke-virtual {p0}, Ld/c;->A()Z

    move-result p1

    iget-boolean v0, p0, Ld/c;->x:Z

    invoke-virtual {p3}, Ld/c;->A()Z

    move-result v1

    iget-boolean v2, p3, Ld/c;->x:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->j(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Ld/c;->x:Z

    invoke-virtual {p0}, Ld/c;->N()Z

    move-result p1

    iget v0, p0, Ld/c;->y:I

    invoke-virtual {p3}, Ld/c;->N()Z

    move-result v1

    iget v2, p3, Ld/c;->y:I

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Ld/c;->y:I

    invoke-virtual {p0}, Ld/c;->B()Z

    move-result p1

    iget v0, p0, Ld/c;->z:F

    invoke-virtual {p3}, Ld/c;->B()Z

    move-result v1

    iget v2, p3, Ld/c;->z:F

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->e(ZFZF)F

    move-result p1

    iput p1, p0, Ld/c;->z:F

    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_5

    iget p1, p0, Ld/c;->g:I

    iget p2, p3, Ld/c;->g:I

    or-int/2addr p1, p2

    iput p1, p0, Ld/c;->g:I

    :cond_5
    return-object p0

    :pswitch_4
    new-instance p0, Ld/c$b;

    invoke-direct {p0, v0}, Ld/c$b;-><init>(Ld/c$a;)V

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {p0}, Lt1/m$e;->makeImmutable()V

    return-object v0

    :pswitch_6
    sget-object p0, Ld/c;->A:Ld/c;

    return-object p0

    :pswitch_7
    new-instance p0, Ld/c;

    invoke-direct {p0}, Ld/c;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x1a -> :sswitch_10
        0x22 -> :sswitch_f
        0x28 -> :sswitch_e
        0x30 -> :sswitch_d
        0x38 -> :sswitch_c
        0x40 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x5d -> :sswitch_8
        0x65 -> :sswitch_7
        0x6d -> :sswitch_6
        0x75 -> :sswitch_5
        0x7d -> :sswitch_4
        0x80 -> :sswitch_3
        0x88 -> :sswitch_2
        0x90 -> :sswitch_1
        0x9d -> :sswitch_0
    .end sparse-switch
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ld/c;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ld/c;->h:I

    invoke-static {v1, v0}, Lt1/g;->q(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Ld/c;->g:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Ld/c;->i:I

    invoke-static {v3, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/r;

    invoke-static {v1, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Ld/c;->g:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Ld/c;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lt1/g;->y(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v3, p0, Ld/c;->l:I

    invoke-static {v1, v3}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Ld/c;->g:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    iget v4, p0, Ld/c;->m:I

    invoke-static {v1, v4}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Ld/c;->g:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    const/4 v1, 0x7

    iget v4, p0, Ld/c;->n:I

    invoke-static {v1, v4}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Ld/c;->g:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_8

    iget v1, p0, Ld/c;->o:I

    invoke-static {v2, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget v2, p0, Ld/c;->p:I

    invoke-static {v1, v2}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget v2, p0, Ld/c;->q:I

    invoke-static {v1, v2}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Ld/c;->r:F

    invoke-static {v1, v2}, Lt1/g;->o(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    iget v2, p0, Ld/c;->s:F

    invoke-static {v1, v2}, Lt1/g;->o(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    iget v2, p0, Ld/c;->t:F

    invoke-static {v1, v2}, Lt1/g;->o(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    iget v2, p0, Ld/c;->u:F

    invoke-static {v1, v2}, Lt1/g;->o(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    const/16 v1, 0xf

    iget v2, p0, Ld/c;->v:F

    invoke-static {v1, v2}, Lt1/g;->o(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Ld/c;->g:I

    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    iget-boolean v1, p0, Ld/c;->w:Z

    invoke-static {v3, v1}, Lt1/g;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Ld/c;->g:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    const/16 v1, 0x11

    iget-boolean v2, p0, Ld/c;->x:Z

    invoke-static {v1, v2}, Lt1/g;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Ld/c;->g:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/16 v1, 0x12

    iget v2, p0, Ld/c;->y:I

    invoke-static {v1, v2}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Ld/c;->g:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x13

    iget v2, p0, Ld/c;->z:F

    invoke-static {v1, v2}, Lt1/g;->o(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lt1/g;)V
    .locals 4

    iget v0, p0, Ld/c;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ld/c;->h:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_0
    iget v0, p0, Ld/c;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ld/c;->i:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Ld/c;->j:Lt1/m$e;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/r;

    invoke-virtual {p1, v1, v2}, Lt1/g;->S(ILt1/r;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Ld/c;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ld/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lt1/g;->T(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v2, p0, Ld/c;->l:I

    invoke-virtual {p1, v0, v2}, Lt1/g;->Q(II)V

    :cond_4
    iget v0, p0, Ld/c;->g:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    iget v3, p0, Ld/c;->m:I

    invoke-virtual {p1, v0, v3}, Lt1/g;->Q(II)V

    :cond_5
    iget v0, p0, Ld/c;->g:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x7

    iget v3, p0, Ld/c;->n:I

    invoke-virtual {p1, v0, v3}, Lt1/g;->Q(II)V

    :cond_6
    iget v0, p0, Ld/c;->g:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    iget v0, p0, Ld/c;->o:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_7
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Ld/c;->p:I

    invoke-virtual {p1, v0, v1}, Lt1/g;->Q(II)V

    :cond_8
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Ld/c;->q:I

    invoke-virtual {p1, v0, v1}, Lt1/g;->Q(II)V

    :cond_9
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Ld/c;->r:F

    invoke-virtual {p1, v0, v1}, Lt1/g;->P(IF)V

    :cond_a
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Ld/c;->s:F

    invoke-virtual {p1, v0, v1}, Lt1/g;->P(IF)V

    :cond_b
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    iget v1, p0, Ld/c;->t:F

    invoke-virtual {p1, v0, v1}, Lt1/g;->P(IF)V

    :cond_c
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    const/16 v0, 0xe

    iget v1, p0, Ld/c;->u:F

    invoke-virtual {p1, v0, v1}, Lt1/g;->P(IF)V

    :cond_d
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    const/16 v0, 0xf

    iget v1, p0, Ld/c;->v:F

    invoke-virtual {p1, v0, v1}, Lt1/g;->P(IF)V

    :cond_e
    iget v0, p0, Ld/c;->g:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Ld/c;->w:Z

    invoke-virtual {p1, v2, v0}, Lt1/g;->K(IZ)V

    :cond_f
    iget v0, p0, Ld/c;->g:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/16 v0, 0x11

    iget-boolean v1, p0, Ld/c;->x:Z

    invoke-virtual {p1, v0, v1}, Lt1/g;->K(IZ)V

    :cond_10
    iget v0, p0, Ld/c;->g:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    const/16 v0, 0x12

    iget v1, p0, Ld/c;->y:I

    invoke-virtual {p1, v0, v1}, Lt1/g;->Q(II)V

    :cond_11
    iget v0, p0, Ld/c;->g:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    const/16 v0, 0x13

    iget v1, p0, Ld/c;->z:F

    invoke-virtual {p1, v0, v1}, Lt1/g;->P(IF)V

    :cond_12
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method public y()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public z()Z
    .locals 1

    iget p0, p0, Ld/c;->g:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
