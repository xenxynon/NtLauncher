.class final Lq5/g$a$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/g$a;->a(Lq5/g;Lq5/g;)Lq5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/p<",
        "Lq5/g;",
        "Lq5/g$b;",
        "Lq5/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lq5/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq5/g$a$a;

    invoke-direct {v0}, Lq5/g$a$a;-><init>()V

    sput-object v0, Lq5/g$a$a;->g:Lq5/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lq5/g;Lq5/g$b;)Lq5/g;
    .locals 2

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lq5/g$b;->getKey()Lq5/g$c;

    move-result-object p0

    invoke-interface {p1, p0}, Lq5/g;->minusKey(Lq5/g$c;)Lq5/g;

    move-result-object p0

    sget-object p1, Lq5/h;->g:Lq5/h;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lq5/e;->f:Lq5/e$b;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v1

    check-cast v1, Lq5/e;

    if-nez v1, :cond_1

    new-instance p1, Lq5/c;

    invoke-direct {p1, p0, p2}, Lq5/c;-><init>(Lq5/g;Lq5/g$b;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Lq5/g;->minusKey(Lq5/g$c;)Lq5/g;

    move-result-object p0

    if-ne p0, p1, :cond_2

    new-instance p0, Lq5/c;

    invoke-direct {p0, p2, v1}, Lq5/c;-><init>(Lq5/g;Lq5/g$b;)V

    move-object p2, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lq5/c;

    new-instance v0, Lq5/c;

    invoke-direct {v0, p0, p2}, Lq5/c;-><init>(Lq5/g;Lq5/g$b;)V

    invoke-direct {p1, v0, v1}, Lq5/c;-><init>(Lq5/g;Lq5/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/g;

    check-cast p2, Lq5/g$b;

    invoke-virtual {p0, p1, p2}, Lq5/g$a$a;->a(Lq5/g;Lq5/g$b;)Lq5/g;

    move-result-object p0

    return-object p0
.end method
