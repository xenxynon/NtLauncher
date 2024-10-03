.class public final Ld/a$b;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Ld/a;",
        "Ld/a$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Ld/a$a;)V
    .locals 0

    invoke-direct {p0}, Ld/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Ld/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ld/a$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/a;

    invoke-static {v0, p1}, Ld/a;->c(Ld/a;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Ld/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ld/d;",
            ">;)",
            "Ld/a$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/a;

    invoke-static {v0, p1}, Ld/a;->d(Ld/a;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ld/a$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/a;

    invoke-static {v0, p1}, Ld/a;->b(Ld/a;Ljava/lang/String;)V

    return-object p0
.end method
