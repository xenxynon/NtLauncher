.class public final synthetic Lcom/nothing/launcher/setting/hiddenapps/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/b;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/b;->g:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->e(Ljava/lang/Runnable;)V

    return-void
.end method
