.class public interface abstract Landroid/support/v4/os/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/a$b;,
        Landroid/support/v4/os/a$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android$support$v4$os$IResultReceiver"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/os/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract Q(ILandroid/os/Bundle;)V
.end method
