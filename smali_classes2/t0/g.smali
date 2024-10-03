.class public final Lt0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation


# instance fields
.field private final a:Lt0/f;


# direct methods
.method constructor <init>(Lt0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/g;->a:Lt0/f;

    return-void
.end method

.method public static a(Lt0/f;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/f;",
            ")",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lt0/g;

    invoke-direct {v0, p0}, Lt0/g;-><init>(Lt0/f;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p0

    return-object p0
.end method
