.class public final Lm0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lo0/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lm0/d;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo0/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm0/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/d;",
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo0/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/e;->a:Lm0/d;

    iput-object p2, p0, Lm0/e;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lm0/e;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Lm0/e;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lm0/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lm0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/d;",
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo0/h;",
            ">;)",
            "Lm0/e;"
        }
    .end annotation

    new-instance v0, Lm0/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lm0/e;-><init>(Lm0/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method
