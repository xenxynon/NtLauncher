.class public final Lo1/a;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ll1/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ll1/u;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo1/a$a;

    invoke-direct {v0}, Lo1/a$a;-><init>()V

    sput-object v0, Lo1/a;->c:Ll1/u;

    return-void
.end method

.method public constructor <init>(Ll1/e;Ll1/t;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/e;",
            "Ll1/t<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll1/t;-><init>()V

    new-instance v0, Lo1/m;

    invoke-direct {v0, p1, p2, p3}, Lo1/m;-><init>(Ll1/e;Ll1/t;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo1/a;->b:Ll1/t;

    iput-object p3, p0, Lo1/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object v0

    sget-object v1, Ls1/b;->o:Ls1/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls1/a;->B()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ls1/a;->a()V

    :goto_0
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo1/a;->b:Ll1/t;

    invoke-virtual {v1, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls1/a;->k()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Lo1/a;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    invoke-virtual {p1}, Ls1/c;->c()Ls1/c;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lo1/a;->b:Ll1/t;

    invoke-virtual {v3, p1, v2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls1/c;->k()Ls1/c;

    return-void
.end method
