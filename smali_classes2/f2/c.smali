.class public final Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf2/c$a;,
        Lf2/c$b;,
        Lf2/c$c;,
        Lf2/c$e;,
        Lf2/c$d;,
        Lf2/c$f;,
        Lf2/c$g;,
        Lf2/c$h;,
        Lf2/c$j;,
        Lf2/c$i;
    }
.end annotation


# static fields
.field public static final a:Lf2/c;

.field private static final b:Lf2/c$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/c;

    invoke-direct {v0}, Lf2/c;-><init>()V

    sput-object v0, Lf2/c;->a:Lf2/c;

    new-instance v0, Lf2/c$a;

    invoke-direct {v0}, Lf2/c$a;-><init>()V

    sput-object v0, Lf2/c;->b:Lf2/c$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lf2/c$g;
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf2/c;->b:Lf2/c$f;

    invoke-interface {v0, p0, p1}, Lf2/c$f;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Lf2/c$g;
    .locals 1

    const-string v0, "target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf2/c;->b:Lf2/c$f;

    invoke-interface {v0, p0}, Lf2/c$f;->b(Ljava/lang/Object;)Lf2/c$g;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Lf2/c$g;
    .locals 1

    const-string v0, "className"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf2/c;->b:Lf2/c$f;

    invoke-interface {v0, p0}, Lf2/c$f;->a(Ljava/lang/String;)Lf2/c$g;

    move-result-object p0

    return-object p0
.end method
