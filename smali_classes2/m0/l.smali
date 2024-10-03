.class public final Lm0/l;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lm0/k;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm0/k;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/k;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/l;->a:Lm0/k;

    iput-object p2, p0, Lm0/l;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lm0/k;Ljavax/inject/Provider;)Lm0/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/k;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;)",
            "Lm0/l;"
        }
    .end annotation

    new-instance v0, Lm0/l;

    invoke-direct {v0, p0, p1}, Lm0/l;-><init>(Lm0/k;Ljavax/inject/Provider;)V

    return-object v0
.end method
