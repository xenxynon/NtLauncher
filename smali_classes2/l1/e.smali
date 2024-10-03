.class public final Ll1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/e$f;
    }
.end annotation


# static fields
.field private static final v:Lr1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lr1/a<",
            "*>;",
            "Ll1/e$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr1/a<",
            "*>;",
            "Ll1/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ln1/c;

.field private final d:Lo1/d;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ln1/d;

.field final g:Ll1/d;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ll1/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Z

.field final m:Z

.field final n:Z

.field final o:Z

.field final p:Ljava/lang/String;

.field final q:I

.field final r:I

.field final s:Ll1/s;

.field final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/u;",
            ">;"
        }
    .end annotation
.end field

.field final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lr1/a;->a(Ljava/lang/Class;)Lr1/a;

    move-result-object v0

    sput-object v0, Ll1/e;->v:Lr1/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ln1/d;->m:Ln1/d;

    sget-object v2, Ll1/c;->g:Ll1/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Ll1/s;->g:Ll1/s;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v0 .. v17}, Ll1/e;-><init>(Ln1/d;Ll1/d;Ljava/util/Map;ZZZZZZZLl1/s;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ln1/d;Ll1/d;Ljava/util/Map;ZZZZZZZLl1/s;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/d;",
            "Ll1/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ll1/f<",
            "*>;>;ZZZZZZZ",
            "Ll1/s;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ll1/u;",
            ">;",
            "Ljava/util/List<",
            "Ll1/u;",
            ">;",
            "Ljava/util/List<",
            "Ll1/u;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, v0, Ll1/e;->a:Ljava/lang/ThreadLocal;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Ll1/e;->b:Ljava/util/Map;

    iput-object v1, v0, Ll1/e;->f:Ln1/d;

    iput-object v2, v0, Ll1/e;->g:Ll1/d;

    iput-object v3, v0, Ll1/e;->h:Ljava/util/Map;

    new-instance v6, Ln1/c;

    invoke-direct {v6, p3}, Ln1/c;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Ll1/e;->c:Ln1/c;

    move v3, p4

    iput-boolean v3, v0, Ll1/e;->i:Z

    iput-boolean v4, v0, Ll1/e;->j:Z

    move/from16 v3, p6

    iput-boolean v3, v0, Ll1/e;->k:Z

    move/from16 v3, p7

    iput-boolean v3, v0, Ll1/e;->l:Z

    move/from16 v3, p8

    iput-boolean v3, v0, Ll1/e;->m:Z

    move/from16 v3, p9

    iput-boolean v3, v0, Ll1/e;->n:Z

    iput-boolean v5, v0, Ll1/e;->o:Z

    move-object/from16 v3, p11

    iput-object v3, v0, Ll1/e;->s:Ll1/s;

    move-object/from16 v7, p12

    iput-object v7, v0, Ll1/e;->p:Ljava/lang/String;

    move/from16 v7, p13

    iput v7, v0, Ll1/e;->q:I

    move/from16 v7, p14

    iput v7, v0, Ll1/e;->r:I

    move-object/from16 v7, p15

    iput-object v7, v0, Ll1/e;->t:Ljava/util/List;

    move-object/from16 v7, p16

    iput-object v7, v0, Ll1/e;->u:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lo1/n;->Y:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lo1/h;->b:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p17

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Lo1/n;->D:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lo1/n;->m:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lo1/n;->g:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lo1/n;->i:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lo1/n;->k:Ll1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p11 .. p11}, Ll1/e;->o(Ll1/s;)Ll1/t;

    move-result-object v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v3}, Lo1/n;->a(Ljava/lang/Class;Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    invoke-direct {p0, v5}, Ll1/e;->e(Z)Ll1/t;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lo1/n;->a(Ljava/lang/Class;Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    invoke-direct {p0, v5}, Ll1/e;->f(Z)Ll1/t;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lo1/n;->a(Ljava/lang/Class;Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lo1/n;->x:Ll1/u;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lo1/n;->o:Ll1/u;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lo1/n;->q:Ll1/u;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Ll1/e;->b(Ll1/t;)Ll1/t;

    move-result-object v8

    invoke-static {v5, v8}, Lo1/n;->b(Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Ll1/e;->c(Ll1/t;)Ll1/t;

    move-result-object v3

    invoke-static {v5, v3}, Lo1/n;->b(Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->s:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->z:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->F:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->H:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Lo1/n;->B:Ll1/t;

    invoke-static {v3, v5}, Lo1/n;->b(Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Lo1/n;->C:Ll1/t;

    invoke-static {v3, v5}, Lo1/n;->b(Ljava/lang/Class;Ll1/t;)Ll1/u;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->J:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->L:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->P:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->R:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->W:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->N:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->d:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/c;->b:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->U:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/k;->b:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/j;->b:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->S:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/a;->c:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lo1/n;->b:Ll1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo1/b;

    invoke-direct {v3, v6}, Lo1/b;-><init>(Ln1/c;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo1/g;

    invoke-direct {v3, v6, v4}, Lo1/g;-><init>(Ln1/c;Z)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo1/d;

    invoke-direct {v3, v6}, Lo1/d;-><init>(Ln1/c;)V

    iput-object v3, v0, Ll1/e;->d:Lo1/d;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lo1/n;->Z:Ll1/u;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lo1/i;

    invoke-direct {v4, v6, p2, p1, v3}, Lo1/i;-><init>(Ln1/c;Ll1/d;Ln1/d;Lo1/d;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ll1/e;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ls1/a;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object p0

    sget-object p1, Ls1/b;->p:Ls1/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ll1/k;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Ll1/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ls1/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ll1/r;

    invoke-direct {p1, p0}, Ll1/r;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ll1/t;)Ll1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/t<",
            "Ljava/lang/Number;",
            ">;)",
            "Ll1/t<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Ll1/e$d;

    invoke-direct {v0, p0}, Ll1/e$d;-><init>(Ll1/t;)V

    invoke-virtual {v0}, Ll1/t;->a()Ll1/t;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ll1/t;)Ll1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/t<",
            "Ljava/lang/Number;",
            ">;)",
            "Ll1/t<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Ll1/e$e;

    invoke-direct {v0, p0}, Ll1/e$e;-><init>(Ll1/t;)V

    invoke-virtual {v0}, Ll1/t;->a()Ll1/t;

    move-result-object p0

    return-object p0
.end method

.method static d(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Z)Ll1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ll1/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lo1/n;->v:Ll1/t;

    return-object p0

    :cond_0
    new-instance p1, Ll1/e$a;

    invoke-direct {p1, p0}, Ll1/e$a;-><init>(Ll1/e;)V

    return-object p1
.end method

.method private f(Z)Ll1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ll1/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lo1/n;->u:Ll1/t;

    return-object p0

    :cond_0
    new-instance p1, Ll1/e$b;

    invoke-direct {p1, p0}, Ll1/e$b;-><init>(Ll1/e;)V

    return-object p1
.end method

.method private static o(Ll1/s;)Ll1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/s;",
            ")",
            "Ll1/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Ll1/s;->g:Ll1/s;

    if-ne p0, v0, :cond_0

    sget-object p0, Lo1/n;->t:Ll1/t;

    return-object p0

    :cond_0
    new-instance p0, Ll1/e$c;

    invoke-direct {p0}, Ll1/e$c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public g(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ll1/e;->p(Ljava/io/Reader;)Ls1/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ll1/e;->k(Ls1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Ll1/e;->a(Ljava/lang/Object;Ls1/a;)V

    invoke-static {p2}, Ln1/k;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ll1/e;->p(Ljava/io/Reader;)Ls1/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ll1/e;->k(Ls1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Ll1/e;->a(Ljava/lang/Object;Ls1/a;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ll1/e;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2}, Ln1/k;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ll1/e;->h(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public k(Ls1/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ls1/a;->r()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ls1/a;->K(Z)V

    :try_start_0
    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ls1/a;->K(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Ll1/r;

    invoke-direct {p2, p0}, Ll1/r;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Ll1/r;

    invoke-direct {p2, p0}, Ll1/r;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, v0}, Ls1/a;->K(Z)V

    return-object p0

    :cond_0
    :try_start_2
    new-instance p2, Ll1/r;

    invoke-direct {p2, p0}, Ll1/r;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Ls1/a;->K(Z)V

    throw p0
.end method

.method public l(Ljava/lang/Class;)Ll1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lr1/a;->a(Ljava/lang/Class;)Lr1/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object p0

    return-object p0
.end method

.method public m(Lr1/a;)Ll1/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr1/a<",
            "TT;>;)",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ll1/e;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Ll1/e;->v:Lr1/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/t;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Ll1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Ll1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/e$f;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    :try_start_0
    new-instance v2, Ll1/e$f;

    invoke-direct {v2}, Ll1/e$f;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ll1/e;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll1/u;

    invoke-interface {v4, p0, p1}, Ll1/u;->a(Ll1/e;Lr1/a;)Ll1/t;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Ll1/e$f;->e(Ll1/t;)V

    iget-object v2, p0, Ll1/e;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p0, p0, Ll1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.5) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p0, p0, Ll1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public n(Ll1/u;Lr1/a;)Ll1/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll1/u;",
            "Lr1/a<",
            "TT;>;)",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ll1/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Ll1/e;->d:Lo1/d;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Ll1/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/u;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Ll1/u;->a(Ll1/e;Lr1/a;)Ll1/t;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GSON cannot serialize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public p(Ljava/io/Reader;)Ls1/a;
    .locals 1

    new-instance v0, Ls1/a;

    invoke-direct {v0, p1}, Ls1/a;-><init>(Ljava/io/Reader;)V

    iget-boolean p0, p0, Ll1/e;->n:Z

    invoke-virtual {v0, p0}, Ls1/a;->K(Z)V

    return-object v0
.end method

.method public q(Ljava/io/Writer;)Ls1/c;
    .locals 1

    iget-boolean v0, p0, Ll1/e;->k:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ls1/c;

    invoke-direct {v0, p1}, Ls1/c;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Ll1/e;->m:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ls1/c;->B(Ljava/lang/String;)V

    :cond_1
    iget-boolean p0, p0, Ll1/e;->i:Z

    invoke-virtual {v0, p0}, Ls1/c;->D(Z)V

    return-object v0
.end method

.method public r(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Ll1/l;->a:Ll1/l;

    invoke-virtual {p0, p1}, Ll1/e;->t(Ll1/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ll1/e;->s(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ll1/e;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t(Ll1/j;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ll1/e;->w(Ll1/j;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ll1/e;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll1/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll1/e;->c:Ln1/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p3}, Ln1/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ll1/e;->q(Ljava/io/Writer;)Ls1/c;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Ll1/e;->v(Ljava/lang/Object;Ljava/lang/reflect/Type;Ls1/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public v(Ljava/lang/Object;Ljava/lang/reflect/Type;Ls1/c;)V
    .locals 4

    invoke-static {p2}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object p2

    invoke-virtual {p3}, Ls1/c;->r()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ls1/c;->C(Z)V

    invoke-virtual {p3}, Ls1/c;->p()Z

    move-result v1

    iget-boolean v2, p0, Ll1/e;->l:Z

    invoke-virtual {p3, v2}, Ls1/c;->A(Z)V

    invoke-virtual {p3}, Ls1/c;->n()Z

    move-result v2

    iget-boolean p0, p0, Ll1/e;->i:Z

    invoke-virtual {p3, p0}, Ls1/c;->D(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Ls1/c;->C(Z)V

    invoke-virtual {p3, v1}, Ls1/c;->A(Z)V

    invoke-virtual {p3, v2}, Ls1/c;->D(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.5): "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, Ls1/c;->C(Z)V

    invoke-virtual {p3, v1}, Ls1/c;->A(Z)V

    invoke-virtual {p3, v2}, Ls1/c;->D(Z)V

    throw p0
.end method

.method public w(Ll1/j;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Ln1/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ll1/e;->q(Ljava/io/Writer;)Ls1/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ll1/e;->x(Ll1/j;Ls1/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public x(Ll1/j;Ls1/c;)V
    .locals 5

    invoke-virtual {p2}, Ls1/c;->r()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ls1/c;->C(Z)V

    invoke-virtual {p2}, Ls1/c;->p()Z

    move-result v1

    iget-boolean v2, p0, Ll1/e;->l:Z

    invoke-virtual {p2, v2}, Ls1/c;->A(Z)V

    invoke-virtual {p2}, Ls1/c;->n()Z

    move-result v2

    iget-boolean p0, p0, Ll1/e;->i:Z

    invoke-virtual {p2, p0}, Ls1/c;->D(Z)V

    :try_start_0
    invoke-static {p1, p2}, Ln1/l;->b(Ll1/j;Ls1/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Ls1/c;->C(Z)V

    invoke-virtual {p2, v1}, Ls1/c;->A(Z)V

    invoke-virtual {p2, v2}, Ls1/c;->D(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, Ls1/c;->C(Z)V

    invoke-virtual {p2, v1}, Ls1/c;->A(Z)V

    invoke-virtual {p2, v2}, Ls1/c;->D(Z)V

    throw p0
.end method
