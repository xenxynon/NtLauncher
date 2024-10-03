.class final Lt1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lt1/j$b<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lt1/j;


# instance fields
.field private final a:Lt1/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/w<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt1/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt1/j;-><init>(Z)V

    sput-object v0, Lt1/j;->d:Lt1/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/j;->c:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lt1/w;->p(I)Lt1/w;

    move-result-object v0

    iput-object v0, p0, Lt1/j;->a:Lt1/w;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt1/j;->c:Z

    invoke-static {p1}, Lt1/w;->p(I)Lt1/w;

    move-result-object p1

    iput-object p1, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0}, Lt1/j;->f()V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    check-cast p1, [B

    array-length p0, p1

    new-array p0, p0, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method private h(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/j$b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lt1/o;

    if-eqz v1, :cond_0

    check-cast p1, Lt1/o;

    invoke-virtual {p1}, Lt1/o;->d()Lt1/r;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lt1/j$b;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lt1/j;->c(Lt1/j$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2}, Lt1/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0, v0, v1}, Lt1/w;->q(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lt1/j$b;->getLiteJavaType()Lt1/c0$c;

    move-result-object v1

    sget-object v2, Lt1/c0$c;->p:Lt1/c0$c;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lt1/j;->c(Lt1/j$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    check-cast v1, Lt1/r;

    invoke-interface {v1}, Lt1/r;->toBuilder()Lt1/r$a;

    move-result-object v1

    check-cast p1, Lt1/r;

    invoke-interface {v0, v1, p1}, Lt1/j$b;->e(Lt1/r$a;Lt1/r;)Lt1/r$a;

    move-result-object p1

    invoke-interface {p1}, Lt1/r$a;->build()Lt1/r;

    move-result-object p1

    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0, v0, p1}, Lt1/w;->q(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, p0, Lt1/j;->a:Lt1/w;

    invoke-direct {p0, p1}, Lt1/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lt1/w;->q(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static i()Lt1/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lt1/j$b<",
            "TT;>;>()",
            "Lt1/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lt1/j;

    invoke-direct {v0}, Lt1/j;-><init>()V

    return-object v0
.end method

.method private static k(Lt1/c0$b;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt1/j$a;->a:[I

    invoke-virtual {p0}, Lt1/c0$b;->a()Lt1/c0$c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p0, p1, Lt1/r;

    if-nez p0, :cond_1

    instance-of p0, p1, Lt1/o;

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lt1/m$a;

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_2
    instance-of p0, p1, Lt1/e;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    move v1, v0

    goto :goto_1

    :pswitch_3
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    instance-of v1, p1, Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_5
    instance-of v1, p1, Ljava/lang/Double;

    goto :goto_1

    :pswitch_6
    instance-of v1, p1, Ljava/lang/Float;

    goto :goto_1

    :pswitch_7
    instance-of v1, p1, Ljava/lang/Long;

    goto :goto_1

    :pswitch_8
    instance-of v1, p1, Ljava/lang/Integer;

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lt1/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/j<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    invoke-static {}, Lt1/j;->i()Lt1/j;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {v2}, Lt1/w;->j()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {v2, v1}, Lt1/w;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/j$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lt1/j;->j(Lt1/j$b;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {v1}, Lt1/w;->l()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/j$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lt1/j;->j(Lt1/j$b;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lt1/j;->c:Z

    iput-boolean p0, v0, Lt1/j;->c:Z

    return-object v0
.end method

.method public c(Lt1/j$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0, p1}, Lt1/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lt1/o;

    if-eqz p1, :cond_0

    check-cast p0, Lt1/o;

    invoke-virtual {p0}, Lt1/o;->d()Lt1/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt1/j;->a()Lt1/j;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lt1/j;->b:Z

    return p0
.end method

.method public e()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lt1/j;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lt1/o$c;

    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0}, Lt1/w;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lt1/o$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0}, Lt1/w;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lt1/j;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lt1/j;

    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    iget-object p1, p1, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0, p1}, Lt1/w;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lt1/j;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {v0}, Lt1/w;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/j;->b:Z

    return-void
.end method

.method public g(Lt1/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/j<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lt1/j;->a:Lt1/w;

    invoke-virtual {v1}, Lt1/w;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lt1/j;->a:Lt1/w;

    invoke-virtual {v1, v0}, Lt1/w;->i(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lt1/j;->h(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lt1/j;->a:Lt1/w;

    invoke-virtual {p1}, Lt1/w;->l()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lt1/j;->h(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0}, Lt1/w;->hashCode()I

    move-result p0

    return p0
.end method

.method public j(Lt1/j$b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lt1/j$b;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lt1/j$b;->getLiteType()Lt1/c0$b;

    move-result-object v2

    invoke-static {v2, v1}, Lt1/j;->k(Lt1/c0$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p1}, Lt1/j$b;->getLiteType()Lt1/c0$b;

    move-result-object v0

    invoke-static {v0, p2}, Lt1/j;->k(Lt1/c0$b;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lt1/o;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/j;->c:Z

    :cond_3
    iget-object p0, p0, Lt1/j;->a:Lt1/w;

    invoke-virtual {p0, p1, p2}, Lt1/w;->q(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
