.class public final synthetic Lcom/android/quickstep/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d7;->g:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iput p2, p0, Lcom/android/quickstep/d7;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/d7;->g:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iget p0, p0, Lcom/android/quickstep/d7;->h:I

    invoke-static {v0, p0}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->m(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;I)V

    return-void
.end method
