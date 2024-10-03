.class final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Throwable;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    iput-object p2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;->h:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {v0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->q(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;->h:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Execute theme icon immediately: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconPackPickerFragment"

    invoke-static {p1, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->e()V

    :cond_1
    return-void
.end method
