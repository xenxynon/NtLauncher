.class public final Le2/e;
.super Le2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/e$a;
    }
.end annotation


# static fields
.field public static final m:Le2/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/e$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/e;->m:Le2/e$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/s;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
