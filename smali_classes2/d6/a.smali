.class public final Ld6/a;
.super Lc6/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc6/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Random;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const-string v0, "current()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
