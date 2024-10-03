.class public final Lm0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
    value = {
        "com.android.systemui.unfold.dagger.UseReceivingFilter"
    }
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f;->a:Lm0/d;

    return-void
.end method

.method public static a(Lm0/d;)Lm0/f;
    .locals 1

    new-instance v0, Lm0/f;

    invoke-direct {v0, p0}, Lm0/f;-><init>(Lm0/d;)V

    return-object v0
.end method
