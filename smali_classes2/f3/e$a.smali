.class public final Lf3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lf3/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lf3/e;
    .locals 1

    const-string p0, "unicodeValue"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "categoryName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf3/e;

    sget-object v0, Lf3/b;->h:Lf3/b;

    invoke-direct {p0, p1, v0, p2}, Lf3/e;-><init>(Ljava/lang/String;Lf3/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lf3/e;
    .locals 1

    const-string p0, "categoryName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf3/e;

    sget-object v0, Lf3/b;->g:Lf3/b;

    invoke-direct {p0, p1, v0, p1}, Lf3/e;-><init>(Ljava/lang/String;Lf3/b;Ljava/lang/String;)V

    return-object p0
.end method
