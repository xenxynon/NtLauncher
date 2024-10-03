.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/a$a;
    }
.end annotation


# static fields
.field public static final a:Lo2/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo2/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lo2/a;->a:Lo2/a$a;

    return-void
.end method
