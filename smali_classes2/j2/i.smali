.class public final Lj2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/i$a;
    }
.end annotation


# static fields
.field public static final a:Lj2/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj2/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj2/i$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lj2/i;->a:Lj2/i$a;

    return-void
.end method
