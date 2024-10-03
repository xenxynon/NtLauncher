.class public final synthetic Lcom/nothing/launcher/card/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

.field public final synthetic h:Lcom/nothing/launcher/card/r;

.field public final synthetic i:Lcom/nothing/launcher/card/CardWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/k;->g:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    iput-object p2, p0, Lcom/nothing/launcher/card/k;->h:Lcom/nothing/launcher/card/r;

    iput-object p3, p0, Lcom/nothing/launcher/card/k;->i:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/card/k;->g:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    iget-object v1, p0, Lcom/nothing/launcher/card/k;->h:Lcom/nothing/launcher/card/r;

    iget-object p0, p0, Lcom/nothing/launcher/card/k;->i:Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->c(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/view/View;)V

    return-void
.end method
