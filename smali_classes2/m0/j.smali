.class public final Lm0/j;
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
        "Lm0/o;",
        ">;>;"
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

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm0/h;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/j;->a:Lm0/h;

    iput-object p2, p0, Lm0/j;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Lm0/j;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Lm0/j;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Lm0/j;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Lm0/j;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lm0/h;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lm0/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/h;",
            "Ljavax/inject/Provider<",
            "Ln0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;)",
            "Lm0/j;"
        }
    .end annotation

    new-instance v7, Lm0/j;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lm0/j;-><init>(Lm0/h;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method
