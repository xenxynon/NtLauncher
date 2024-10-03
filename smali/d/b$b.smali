.class public final Ld/b$b;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Ld/b;",
        "Ld/b$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Ld/b;->a()Ld/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Ld/b$a;)V
    .locals 0

    invoke-direct {p0}, Ld/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/c$b;)Ld/b$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/b;

    invoke-static {v0, p1}, Ld/b;->c(Ld/b;Ld/c$b;)V

    return-object p0
.end method

.method public b(J)Ld/b$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/b;

    invoke-static {v0, p1, p2}, Ld/b;->b(Ld/b;J)V

    return-object p0
.end method
