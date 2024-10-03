.class public final Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$f;
.super Lq5/a;
.source "SourceFile"

# interfaces
.implements Li6/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Li6/j0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lq5/a;-><init>(Lq5/g$c;)V

    return-void
.end method


# virtual methods
.method public handleException(Lq5/g;Ljava/lang/Throwable;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Delay need, cancel prev! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfigFragment"

    invoke-static {p1, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
