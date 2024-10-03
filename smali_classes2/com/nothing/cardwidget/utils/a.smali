.class public final synthetic Lcom/nothing/cardwidget/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/utils/ServiceBindHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/a;->g:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/a;->g:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-static {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->a(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    return-void
.end method
