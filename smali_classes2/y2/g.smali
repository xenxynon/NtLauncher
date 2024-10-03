.class public final Ly2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/g$f;,
        Ly2/g$e;,
        Ly2/g$a;,
        Ly2/g$b;,
        Ly2/g$d;,
        Ly2/g$c;,
        Ly2/g$h;,
        Ly2/g$g;
    }
.end annotation


# static fields
.field public static final a:Ly2/g;

.field private static final b:Ly2/g$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/g;

    invoke-direct {v0}, Ly2/g;-><init>()V

    sput-object v0, Ly2/g;->a:Ly2/g;

    new-instance v0, Ly2/g$a;

    invoke-direct {v0}, Ly2/g$a;-><init>()V

    sput-object v0, Ly2/g;->b:Ly2/g$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ly2/g$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ly2/g$f;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/g;->b:Ly2/g$e;

    invoke-interface {v0, p0}, Ly2/g$e;->c(Ljava/lang/Class;)Ly2/g$f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ly2/g$f;
    .locals 1

    const-string v0, "target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/g;->b:Ly2/g$e;

    invoke-interface {v0, p0}, Ly2/g$e;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Ly2/g$f;
    .locals 1

    const-string v0, "className"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/g;->b:Ly2/g$e;

    invoke-interface {v0, p0}, Ly2/g$e;->a(Ljava/lang/String;)Ly2/g$f;

    move-result-object p0

    return-object p0
.end method
