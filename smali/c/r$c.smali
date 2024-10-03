.class Lc/r$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/Class;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Lc/r$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/r$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lc/r$a;)V
    .locals 0

    invoke-direct {p0}, Lc/r$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/r$b;Ljava/util/ArrayList;Ld/c$b;)Lc/r$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/r$b;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ld/c$b;",
            ")",
            "Lc/r$c;"
        }
    .end annotation

    iget-object v0, p0, Lc/r$c;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lc/r$c;->a:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3, v0}, Ld/c$b;->c(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->b:I

    invoke-virtual {v0, v1}, Ld/c$b;->f(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->d:I

    invoke-virtual {p1, v1}, Lc/r$b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/c$b;->h(Ljava/lang/String;)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->e:I

    invoke-virtual {v0, v1}, Ld/c$b;->i(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->f:I

    invoke-virtual {v0, v1}, Ld/c$b;->n(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->g:I

    iget v2, p0, Lc/r$c;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ld/c$b;->r(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->h:I

    iget v2, p0, Lc/r$c;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ld/c$b;->g(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->k:F

    invoke-virtual {v0, v1}, Ld/c$b;->o(F)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->l:F

    invoke-virtual {v0, v1}, Ld/c$b;->p(F)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->i:I

    invoke-virtual {v0, v1}, Ld/c$b;->l(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->j:I

    invoke-virtual {v0, v1}, Ld/c$b;->m(I)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->m:F

    invoke-virtual {v0, v1}, Ld/c$b;->j(F)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->n:F

    invoke-virtual {v0, v1}, Ld/c$b;->k(F)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->o:F

    invoke-virtual {v0, v1}, Ld/c$b;->b(F)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->q:I

    invoke-virtual {v0, v1}, Ld/c$b;->q(I)Ld/c$b;

    move-result-object v0

    iget-boolean v1, p0, Lc/r$c;->r:Z

    invoke-virtual {v0, v1}, Ld/c$b;->s(Z)Ld/c$b;

    move-result-object v0

    iget v1, p0, Lc/r$c;->p:F

    invoke-virtual {v0, v1}, Ld/c$b;->e(F)Ld/c$b;

    move-result-object v0

    iget-boolean v1, p0, Lc/r$c;->s:Z

    invoke-virtual {v0, v1}, Ld/c$b;->d(Z)Ld/c$b;

    iget-object v0, p0, Lc/r$c;->t:Lc/r$c;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lc/r$c;->c:I

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Ld/c;->Q()Ld/c$b;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lc/r$c;->a(Lc/r$b;Ljava/util/ArrayList;Ld/c$b;)Lc/r$c;

    move-result-object v0

    invoke-virtual {p3, v2}, Ld/c$b;->a(Ld/c$b;)Ld/c$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Lc/r$c;)V
    .locals 1

    iget-object v0, p0, Lc/r$c;->a:Ljava/lang/Class;

    iput-object v0, p1, Lc/r$c;->a:Ljava/lang/Class;

    iget v0, p0, Lc/r$c;->b:I

    iput v0, p1, Lc/r$c;->b:I

    iget v0, p0, Lc/r$c;->c:I

    iput v0, p1, Lc/r$c;->c:I

    iget v0, p0, Lc/r$c;->d:I

    iput v0, p1, Lc/r$c;->d:I

    iget v0, p0, Lc/r$c;->e:I

    iput v0, p1, Lc/r$c;->e:I

    iget v0, p0, Lc/r$c;->f:I

    iput v0, p1, Lc/r$c;->f:I

    iget v0, p0, Lc/r$c;->g:I

    iput v0, p1, Lc/r$c;->g:I

    iget v0, p0, Lc/r$c;->h:I

    iput v0, p1, Lc/r$c;->h:I

    iget v0, p0, Lc/r$c;->i:I

    iput v0, p1, Lc/r$c;->i:I

    iget v0, p0, Lc/r$c;->j:I

    iput v0, p1, Lc/r$c;->j:I

    iget v0, p0, Lc/r$c;->m:F

    iput v0, p1, Lc/r$c;->m:F

    iget v0, p0, Lc/r$c;->n:F

    iput v0, p1, Lc/r$c;->n:F

    iget v0, p0, Lc/r$c;->k:F

    iput v0, p1, Lc/r$c;->k:F

    iget v0, p0, Lc/r$c;->l:F

    iput v0, p1, Lc/r$c;->l:F

    iget v0, p0, Lc/r$c;->o:F

    iput v0, p1, Lc/r$c;->o:F

    iget v0, p0, Lc/r$c;->q:I

    iput v0, p1, Lc/r$c;->q:I

    iget-boolean v0, p0, Lc/r$c;->r:Z

    iput-boolean v0, p1, Lc/r$c;->r:Z

    iget-boolean v0, p0, Lc/r$c;->s:Z

    iput-boolean v0, p1, Lc/r$c;->s:Z

    iget p0, p0, Lc/r$c;->p:F

    iput p0, p1, Lc/r$c;->p:F

    return-void
.end method
