.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;
.super Landroid/database/ContentObserver;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #calls: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1200(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    .line 295
    return-void
.end method
