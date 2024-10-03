.class public final Lm0/i;
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
.field private final a:Lm0/h;

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


# direct methods
.method public constructor <init>(Lm0/h;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/h;",
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/i;->a:Lm0/h;

    iput-object p2, p0, Lm0/i;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lm0/i;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lm0/h;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lm0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/h;",
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;)",
            "Lm0/i;"
        }
    .end annotation

    new-instance v0, Lm0/i;

    invoke-direct {v0, p0, p1, p2}, Lm0/i;-><init>(Lm0/h;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method
