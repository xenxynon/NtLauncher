.class final Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/NTTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTTextClock;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/NTTextClock;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p1}, Lcom/nothing/cardwidget/NTTextClock;->access$chooseFormat(Lcom/nothing/cardwidget/NTTextClock;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTTextClock;->access$onTimeChanged(Lcom/nothing/cardwidget/NTTextClock;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p1}, Lcom/nothing/cardwidget/NTTextClock;->access$chooseFormat(Lcom/nothing/cardwidget/NTTextClock;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/NTTextClock$FormatChangeObserver;->this$0:Lcom/nothing/cardwidget/NTTextClock;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTTextClock;->access$onTimeChanged(Lcom/nothing/cardwidget/NTTextClock;)V

    return-void
.end method
